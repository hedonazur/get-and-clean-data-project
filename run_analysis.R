setwd(("~/Documents/get_clean_data/UC_ HA_ Dataset/train"))
train_set<-read.table("X_train.txt")[,c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,345:350,424:429,503,504,516,517,529,530,542,543)]
#except angles and meanFreq

train_subject <-read.table("subject_train.txt")
train_activity <-read.table("y_train.txt")
train<-cbind(train_subject,train_activity,train_set)
setwd(("~/Documents/get_clean_data/UC_ HA_ Dataset/test"))
test_set<-read.table("X_test.txt")[,c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,345:350,424:429,503,504,516,517,529,530,542,543)]
test_subject <-read.table("subject_test.txt")
test_activity <-read.table("y_test.txt")
test<-cbind(test_subject,test_activity,test_set)

uc_ha_data<-rbind(train,test)
setwd(("~/Documents/get_clean_data/UC_ HA_ Dataset"))
features <-read.table("features.txt")
names(uc_ha_data)[1:2]<-c("subject", "activity")
names(uc_ha_data)[3:68]<-as.character(features[,2][c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,345:350,424:429,503,504,516,517,529,530,542,543)])

uc_ha_data$activity[uc_ha_data$activity ==1]<-"WALKING"
uc_ha_data$activity[uc_ha_data$activity ==2]<-"WALKING_UPSTAIRS"
uc_ha_data$activity[uc_ha_data$activity ==3]<-"WALKING_DOWNSTAIRS"
uc_ha_data$activity[uc_ha_data$activity ==4]<-"SITTING"
uc_ha_data$activity[uc_ha_data$activity ==5]<-"STANDING"
uc_ha_data$activity[uc_ha_data$activity ==6]<-"LAYING"

names(uc_ha_data)<-gsub("fBody", "frequency signal Body ", names(uc_ha_data))
names(uc_ha_data)<-gsub("tBody", "time signal Body ", names(uc_ha_data))
names(uc_ha_data)<-gsub("tGravity", "time signal Gravity ", names(uc_ha_data))
names(uc_ha_data)<-gsub("Acc", "Acceleration ", names(uc_ha_data))
names(uc_ha_data)<-gsub("Gyro", "gyroscope ", names(uc_ha_data))
names(uc_ha_data)<-gsub("Mag", " magnitude  ", names(uc_ha_data))

as.factor(uc_ha_data$subject)
as.factor(uc_ha_data$activity)

#

for (i in uc_ha_data$subject){
                resumen<-tapply(uc_ha_data[,3],uc_ha_data$activity,mean)

                }
        
subject1<-uc_ha_data$subject[uc_ha_data$subject==1]
tapply(subject1[,3],subject1$activity,mean)

mean(uc_ha_data$3:68
uc_ha_data_tidy<- mean(subject
        uc_ha_data$activity[]


