@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZSTDBSTUDENTMAN'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZSTC_DBSTUDENTMAN
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZSTR_DBSTUDENTMAN
  association [1..1] to ZZSTR_DBSTUDENTMAN as _BaseEntity on $projection.STUDENTID = _BaseEntity.STUDENTID
{
  key StudentID,
  FirstName,
  LastName,
  StudentAge,
  StudentDob,
  CourseName,
  CourseDuration,
  Gender,
  StudentEmail,
  PhoneNumber,
  StudentAddress,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
