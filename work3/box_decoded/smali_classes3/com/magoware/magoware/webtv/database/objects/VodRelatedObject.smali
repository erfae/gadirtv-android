.class public Lcom/magoware/magoware/webtv/database/objects/VodRelatedObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "VodRelatedObject.java"


# instance fields
.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/VodRelatedObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 13
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/VodRelatedObject;->id:Ljava/lang/String;

    return-void
.end method
