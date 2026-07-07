.class public Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "UserSettingsObject.java"


# instance fields
.field public auto_timezone:Z

.field public get_messages:Z

.field public password:Ljava/lang/String;

.field public pin:Ljava/lang/String;

.field public player:Ljava/lang/String;

.field public show_adult:Z

.field public timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 8
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 9
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->pin:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->show_adult:Z

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->auto_timezone:Z

    .line 12
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->timezone:Ljava/lang/String;

    const-string v2, "default"

    .line 13
    iput-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->player:Ljava/lang/String;

    .line 14
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->get_messages:Z

    .line 15
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->password:Ljava/lang/String;

    return-void
.end method
