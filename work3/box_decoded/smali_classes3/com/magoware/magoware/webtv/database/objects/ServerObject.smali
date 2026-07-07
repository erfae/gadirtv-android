.class public Lcom/magoware/magoware/webtv/database/objects/ServerObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "ServerObject.java"


# instance fields
.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/ServerObject;

    const-string v1, "id"

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerObject;->name:Ljava/lang/String;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerObject;->id:I

    return-void
.end method
