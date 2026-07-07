.class public Lcom/magoware/magoware/webtv/database/objects/LoginObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "LoginObject.java"


# instance fields
.field public company_id:I

.field public company_name:Ljava/lang/String;

.field public encryption_key:Ljava/lang/String;

.field public id:I

.field public new_encryption_key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/LoginObject;

    const-string v1, "id"

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/LoginObject;->encryption_key:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/LoginObject;->new_encryption_key:Ljava/lang/String;

    const/4 v1, 0x1

    .line 20
    iput v1, p0, Lcom/magoware/magoware/webtv/database/objects/LoginObject;->id:I

    .line 21
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/LoginObject;->company_name:Ljava/lang/String;

    .line 22
    iput v1, p0, Lcom/magoware/magoware/webtv/database/objects/LoginObject;->company_id:I

    return-void
.end method
