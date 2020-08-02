run_analysis <- function(x_tr_path, y_tr_path, sub_tr, x_te_path, y_te_path, sub_te, act_labels, ftrs) {
	x_train <- read.table(x_tr_path)
	y_train <- read.table(y_tr_path)
	subject_train <- read.table(sub_tr)

	activity_labels <- read.table(act_labels)
	features <- read.table(ftrs)

	names(x_train) <- features$V2
	
	mean_std <- grep("*mean|std*", names(x_train))

	x_train <- x_train[, mean_std]
	
	for (i in 1:6) { y_train$V1 <- gsub(i, activity_labels$V2[i], y_train$V1) }

	train_set <- cbind(y_train, x_train)

	names(train_set)[1] <- "Activity"

	train_set_final <- cbind(subject_train, train_set)

	names(train_set_final)[1] <- "SubjectID"

	#View(train_set_final) (for debugging)

	x_test <- read.table(x_te_path)
	y_test <- read.table(y_te_path)
	subject_test <- read.table(sub_te)

	names(x_test) <- features$V2
	
	mean_std_2 <- grep("*mean|std*", names(x_test))

	x_test <- x_test[, mean_std_2]
	
	for (i in 1:6) { y_test$V1 <- gsub(i, activity_labels$V2[i], y_test$V1) }

	test_set <- cbind(y_test, x_test)

	names(test_set)[1] <- "Activity"

	test_set_final <- cbind(subject_test, test_set)

	names(test_set_final)[1] <- "SubjectID"

	#View(test_set_final) (for debugging)

	final_set <- rbind(train_set_final, test_set_final)

	final_set <- arrange(final_set, final_set$SubjectID)

	#View(final_set) (for debugging)
	
	final_set <- group_by(final_set, SubjectID, Activity)

	final_set <- summarise_all(final_set, mean)

	#View(final_set) (for debugging)

	write.table(final_set, './analysis_final_data.txt', row.names = FALSE)

	print('Analysis complete.')
}