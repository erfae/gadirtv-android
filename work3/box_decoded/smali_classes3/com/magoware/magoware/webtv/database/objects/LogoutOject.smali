.class public Lcom/magoware/magoware/webtv/database/objects/LogoutOject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "LogoutOject.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/LoginObject;

    const-string v1, "id"

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
