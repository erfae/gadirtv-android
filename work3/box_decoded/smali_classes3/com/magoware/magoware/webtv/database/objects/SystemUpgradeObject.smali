.class public Lcom/magoware/magoware/webtv/database/objects/SystemUpgradeObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "SystemUpgradeObject.java"


# instance fields
.field public activated:Ljava/lang/Boolean;

.field public description:Ljava/lang/String;

.field public id:I

.field public location:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public updatedate:Ljava/lang/String;

.field public upgradetype:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/SystemUpgradeObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/SystemUpgradeObject;->id:I

    .line 10
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/SystemUpgradeObject;->upgradetype:I

    .line 11
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SystemUpgradeObject;->name:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SystemUpgradeObject;->updatedate:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SystemUpgradeObject;->description:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SystemUpgradeObject;->location:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/SystemUpgradeObject;->activated:Ljava/lang/Boolean;

    return-void
.end method
