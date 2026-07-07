.class public Lcom/magoware/magoware/webtv/visualon/PlayerPermissions;
.super Ljava/lang/Object;
.source "PlayerPermissions.java"


# static fields
.field private static final REQUEST_CODE_READ_WRITE_EXTERNAL_STORAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Lab1 Permissions"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    const-string p1, "Lab1 Permissions"

    const-string v0, "Permission answer from the user..."

    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    array-length p0, p2

    if-eqz p0, :cond_3

    .line 63
    array-length p0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    aget v2, p2, v1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :cond_3
    :goto_1
    return p1
.end method

.method public static permsAreGranted(Landroid/content/Context;Landroid/app/Activity;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playerContext",
            "playerActivity"
        }
    .end annotation

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 36
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    .line 40
    aget-object v8, v0, v5

    .line 41
    invoke-static {p0, v8}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    aput v8, v2, v7

    .line 42
    aget v8, v2, v7

    if-nez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    and-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v6, :cond_3

    .line 47
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 48
    invoke-static {p1, v0, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    return v3

    :cond_3
    const-string p0, "Lab1 Permissions"

    const-string p1, "Permission already granted for writing external"

    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method
