@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZZSTDBSTUDENTMAN'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZZSTR_DBSTUDENTMAN
  as select from ZDB_STUDENT
{
  key student_id as StudentID,
  first_name as FirstName,
  last_name as LastName,
  student_age as StudentAge,
  student_dob as StudentDob,
  course_name as CourseName,
  course_duration as CourseDuration,
  gender as Gender,
  student_email as StudentEmail,
  phone_number as PhoneNumber,
  student_address as StudentAddress,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
