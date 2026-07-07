.class public Lcom/magoware/magoware/webtv/database/objects/CountryObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "CountryObject.java"


# instance fields
.field public id:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/CountryObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/CountryObject;->id:I

    return-void
.end method
