.class public Lcom/magoware/magoware/webtv/database/objects/ComboObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "ComboObject.java"


# instance fields
.field public duration:Ljava/lang/String;

.field public enddated:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public saledate:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/ComboObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 8
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ComboObject;->saledate:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ComboObject;->username:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ComboObject;->duration:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ComboObject;->name:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ComboObject;->enddated:Ljava/lang/String;

    return-void
.end method
