.class public Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "ChannelCategoryObject.java"


# instance fields
.field public adult:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_adult"
    .end annotation
.end field

.field public icon:Ljava/lang/String;

.field public id:I

.field public name:Ljava/lang/String;

.field public pin_protected:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    .line 11
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->name:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->icon:Ljava/lang/String;

    .line 13
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->adult:Z

    .line 14
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->pin_protected:Z

    return-void
.end method


# virtual methods
.method public isAdult()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->adult:Z

    return v0
.end method
