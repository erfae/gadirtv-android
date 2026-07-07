.class public Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/ForgotPinObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "ForgotPinObject.java"


# instance fields
.field public forgot_message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/ForgotPinObject;

    const-string v1, "id"

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/ForgotPinObject;->forgot_message:Ljava/lang/String;

    return-void
.end method
