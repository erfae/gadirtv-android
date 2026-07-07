.class public Landroidmads/library/qrgenearator/QRGSaver;
.super Ljava/lang/Object;
.source "QRGSaver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compressFormat(I)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Comparable<",
            "+",
            "Ljava/lang/Comparable<",
            "+",
            "Ljava/lang/Comparable<",
            "*>;>;>;"
        }
    .end annotation

    .line 46
    sget v0, Landroidmads/library/qrgenearator/QRGContents$ImageType;->IMAGE_PNG:I

    if-ne p1, v0, :cond_0

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 47
    :cond_0
    sget v0, Landroidmads/library/qrgenearator/QRGContents$ImageType;->IMAGE_WEBP:I

    if-ne p1, v0, :cond_1

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object p1
.end method

.method private imgFormat(I)Ljava/lang/String;
    .locals 1

    .line 42
    sget v0, Landroidmads/library/qrgenearator/QRGContents$ImageType;->IMAGE_PNG:I

    if-ne p1, v0, :cond_0

    const-string p1, ".png"

    goto :goto_0

    :cond_0
    const-string p1, ".jpg"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public save(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 38
    sget v0, Landroidmads/library/qrgenearator/QRGContents$ImageType;->IMAGE_PNG:I

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidmads/library/qrgenearator/QRGSaver;->save(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)Z

    move-result p1

    return p1
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroidmads/library/qrgenearator/QRGSaver;->imgFormat(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v1, "QRGSaver"

    if-nez p1, :cond_0

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    :cond_0
    const-string p1, "Folder Exists"

    .line 22
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :goto_0
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p4}, Landroidmads/library/qrgenearator/QRGSaver;->compressFormat(I)Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap$CompressFormat;

    const/16 p4, 0x64

    invoke-virtual {p3, p2, p4, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 27
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 28
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_1
    return p1
.end method
