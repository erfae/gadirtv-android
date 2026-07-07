.class public Lcom/magoware/magoware/webtv/deviceApps/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "drawable",
            "name",
            "packageName"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/magoware/magoware/webtv/deviceApps/AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 12
    iput-object p2, p0, Lcom/magoware/magoware/webtv/deviceApps/AppInfo;->mName:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/magoware/magoware/webtv/deviceApps/AppInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/magoware/magoware/webtv/deviceApps/AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/magoware/magoware/webtv/deviceApps/AppInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/magoware/magoware/webtv/deviceApps/AppInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
