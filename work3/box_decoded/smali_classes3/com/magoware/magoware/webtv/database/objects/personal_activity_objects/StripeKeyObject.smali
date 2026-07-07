.class public Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/StripeKeyObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "StripeKeyObject.java"


# instance fields
.field public stripekey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/StripeKeyObject;

    const-string v1, "id"

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/StripeKeyObject;->stripekey:Ljava/lang/String;

    return-void
.end method
