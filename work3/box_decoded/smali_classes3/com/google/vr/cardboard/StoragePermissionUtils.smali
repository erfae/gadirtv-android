.class public Lcom/google/vr/cardboard/StoragePermissionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final STORAGE_PERMISSION:Ljava/lang/String; = "android.permission.READ_EXTERNAL_STORAGE"

.field public static final STORAGE_PERMISSION_DUMMY_REQUEST_CODE:I = 0xef

.field private static final TAG:Ljava/lang/String; = "StoragePermissionUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestStoragePermission(Landroid/content/Context;)V
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_2

    .line 8
    sget-object p1, Lcom/google/vr/cardboard/StoragePermissionUtils;->TAG:Ljava/lang/String;

    const-string v0, "An Activity Context is required, aborting storage permission request."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xef

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
