.class Lcom/inka/ncg/jni/NCG_Core_Low;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native ncg2_core_decrypt_file(Ljava/lang/String;)I
.end method

.method private native ncg2_core_decrypt_test()V
.end method

.method private native ncg2_core_init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native ncg2_core_is_ncg_file(Ljava/lang/String;)Z
.end method

.method private native ncg2_core_license_delete(Ljava/lang/String;)Z
.end method

.method private native ncg2_core_release()V
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const-string v0, "stlport_shared"

    .line 16
    invoke-static {p1, v0}, Lcom/inka/ncg/jni/Util;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, "NCG2_Core_Low"

    .line 17
    invoke-static {p1, v0}, Lcom/inka/ncg/jni/Util;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, "NCG2_Core_Low_Demo"

    .line 18
    invoke-static {p1, v0}, Lcom/inka/ncg/jni/Util;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)Z

    .line 20
    new-instance v0, Lcom/inka/ncg2/DeviceManager;

    invoke-direct {v0, p1}, Lcom/inka/ncg2/DeviceManager;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {v0}, Lcom/inka/ncg2/DeviceManager;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v0}, Lcom/inka/ncg2/DeviceManager;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v0, p1}, Lcom/inka/ncg/jni/NCG_Core_Low;->ncg2_core_init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)I
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/inka/ncg/jni/NCG_Core_Low;->ncg2_core_decrypt_file(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/inka/ncg/jni/NCG_Core_Low;->ncg2_core_release()V

    return-void
.end method

.method public b()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/inka/ncg/jni/NCG_Core_Low;->ncg2_core_decrypt_test()V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/inka/ncg/jni/NCG_Core_Low;->ncg2_core_is_ncg_file(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/inka/ncg/jni/NCG_Core_Low;->ncg2_core_license_delete(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
