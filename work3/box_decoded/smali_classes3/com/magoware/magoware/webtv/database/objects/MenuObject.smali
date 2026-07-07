.class public Lcom/magoware/magoware/webtv/database/objects/MenuObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "MenuObject.java"


# instance fields
.field public icon:Ljava/lang/String;

.field public menucode:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 8
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->title:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->url:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->icon:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    return-void
.end method
