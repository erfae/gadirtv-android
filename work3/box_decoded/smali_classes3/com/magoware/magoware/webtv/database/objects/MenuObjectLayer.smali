.class public Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "MenuObjectLayer.java"


# instance fields
.field public icon:Ljava/lang/String;

.field public icon_url:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public menu_code:Ljava/lang/String;

.field public menu_description:Ljava/lang/String;

.field public menucode:Ljava/lang/String;

.field public parent_id:Ljava/lang/String;

.field public position:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 8
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->id:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->title:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->url:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->icon:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->icon_url:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->menu_code:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->position:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->parent_id:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->menu_description:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->menucode:Ljava/lang/String;

    return-void
.end method
