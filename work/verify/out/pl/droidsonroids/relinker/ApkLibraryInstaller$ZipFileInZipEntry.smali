.class Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;
.super Ljava/lang/Object;
.source "ApkLibraryInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/relinker/ApkLibraryInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipFileInZipEntry"
.end annotation


# instance fields
.field public zipEntry:Ljava/util/zip/ZipEntry;

.field public zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    .line 3
    iput-object p2, p0, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipEntry:Ljava/util/zip/ZipEntry;

    return-void
.end method
