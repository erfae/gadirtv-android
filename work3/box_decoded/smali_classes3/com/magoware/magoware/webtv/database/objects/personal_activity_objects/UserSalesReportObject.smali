.class public Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "UserSalesReportObject.java"


# instance fields
.field public combo_duration:Ljava/lang/String;

.field public combo_name:Ljava/lang/String;

.field public distributorname:Ljava/lang/String;

.field public sale_date:Ljava/lang/String;

.field public user_username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 10
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;->user_username:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;->distributorname:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;->sale_date:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;->combo_name:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;->combo_duration:Ljava/lang/String;

    return-void
.end method
