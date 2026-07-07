.class public Lcom/magoware/magoware/webtv/database/objects/MessageObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "MessageObject.java"


# instance fields
.field public boxid:Ljava/lang/String;

.field public dateadded:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public sent:Z

.field public title:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/MessageObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
