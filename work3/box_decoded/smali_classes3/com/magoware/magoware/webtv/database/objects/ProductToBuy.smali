.class public Lcom/magoware/magoware/webtv/database/objects/ProductToBuy;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "ProductToBuy.java"


# instance fields
.field public duration:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/ProductToBuy;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 13
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ProductToBuy;->id:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ProductToBuy;->name:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ProductToBuy;->duration:Ljava/lang/String;

    return-void
.end method
