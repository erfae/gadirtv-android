.class public Lpl/droidsonroids/relinker/ApkLibraryInstaller;
.super Ljava/lang/Object;
.source "ApkLibraryInstaller.java"

# interfaces
.implements Lpl/droidsonroids/relinker/ReLinker$LibraryInstaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;
    }
.end annotation


# static fields
.field private static final COPY_BUFFER_SIZE:I = 0x1000

.field private static final MAX_TRIES:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p1, :cond_5

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 1
    :goto_6
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    .line 2
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-wide v1

    :cond_11
    const/4 v4, 0x0

    .line 3
    invoke-virtual {p2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_6
.end method

.method private findAPKWithLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinkerInstance;)Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;
    .registers 21

    move-object/from16 v0, p2

    .line 1
    invoke-direct/range {p0 .. p1}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->sourceDirectories(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v3

    :goto_b
    if-ge v5, v2, :cond_82

    aget-object v7, v1, v5

    const/4 v8, 0x0

    :goto_10
    add-int/lit8 v9, v8, 0x1

    const/4 v10, 0x5

    const/4 v11, 0x1

    if-ge v8, v10, :cond_24

    .line 2
    :try_start_16
    new-instance v8, Ljava/util/zip/ZipFile;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v12, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_20} :catch_22

    move-object v6, v8

    goto :goto_24

    :catch_22
    move v8, v9

    goto :goto_10

    :cond_24
    :goto_24
    if-nez v6, :cond_2b

    move-object/from16 v12, p3

    move-object/from16 v15, p4

    goto :goto_7e

    :cond_2b
    const/4 v8, 0x0

    :goto_2c
    add-int/lit8 v9, v8, 0x1

    if-ge v8, v10, :cond_77

    .line 3
    array-length v8, v0

    const/4 v10, 0x0

    :goto_32
    if-ge v10, v8, :cond_70

    aget-object v12, v0, v10

    const-string v13, "lib"

    .line 4
    invoke-static {v13}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 5
    sget-char v14, Ljava/io/File;->separatorChar:C

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v12, Ljava/io/File;->separatorChar:C

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v13, v14, v4

    aput-object v7, v14, v11

    const-string v4, "Looking for %s in APK %s..."

    move-object/from16 v15, p4

    .line 6
    invoke-virtual {v15, v4, v14}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v6, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_6c

    .line 8
    new-instance v0, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;

    invoke-direct {v0, v6, v4}, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    return-object v0

    :cond_6c
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    goto :goto_32

    :cond_70
    move-object/from16 v12, p3

    move-object/from16 v15, p4

    const/4 v10, 0x5

    move v8, v9

    goto :goto_2c

    :cond_77
    move-object/from16 v12, p3

    move-object/from16 v15, p4

    .line 9
    :try_start_7b
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7e

    :catch_7e
    :goto_7e
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_b

    :cond_82
    return-object v3
.end method

.method private sourceDirectories(Landroid/content/Context;)[Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 2
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    array-length v3, v0

    if-eqz v3, :cond_1a

    .line 3
    array-length v3, v0

    add-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    .line 4
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object p1, v3, v1

    .line 5
    array-length p1, v0

    invoke-static {v0, v1, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_1a
    new-array v0, v2, [Ljava/lang/String;

    .line 6
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object p1, v0, v1

    return-object v0
.end method


# virtual methods
.method public installLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lpl/droidsonroids/relinker/ReLinkerInstance;)V
    .registers 16

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p5}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->findAPKWithLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinkerInstance;)Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_9b

    if-eqz p1, :cond_92

    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_9
    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_85

    :try_start_e
    const-string v1, "Found %s! Extracting..."

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p3, v4, p2

    .line 2
    invoke-virtual {p5, v1, v4}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_98

    .line 3
    :try_start_18
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {p4}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_22} :catch_83
    .catchall {:try_start_18 .. :try_end_22} :catchall_98

    if-nez v1, :cond_26

    goto/16 :goto_83

    .line 4
    :cond_26
    :try_start_26
    iget-object v1, p1, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    iget-object v4, p1, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2e} :catch_7d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_77
    .catchall {:try_start_26 .. :try_end_2e} :catchall_6e

    .line 5
    :try_start_2e
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_33} :catch_6c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_6a
    .catchall {:try_start_2e .. :try_end_33} :catchall_66

    .line 6
    :try_start_33
    invoke-direct {p0, v1, v4}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v5

    .line 7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 8
    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v7
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_42} :catch_7f
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_42} :catch_79
    .catchall {:try_start_33 .. :try_end_42} :catchall_64

    cmp-long v9, v5, v7

    if-eqz v9, :cond_4d

    .line 9
    :try_start_46
    invoke-direct {p0, v1}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 10
    :goto_49
    invoke-direct {p0, v4}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_83

    .line 11
    :cond_4d
    invoke-direct {p0, v1}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 12
    invoke-direct {p0, v4}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 13
    invoke-virtual {p4, v3, p2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 14
    invoke-virtual {p4, v3, p2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 15
    invoke-virtual {p4, v3}, Ljava/io/File;->setWritable(Z)Z
    :try_end_5c
    .catchall {:try_start_46 .. :try_end_5c} :catchall_98

    .line 16
    :try_start_5c
    iget-object p1, p1, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz p1, :cond_63

    .line 17
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_63} :catch_63

    :catch_63
    :cond_63
    return-void

    :catchall_64
    move-exception p2

    goto :goto_68

    :catchall_66
    move-exception p2

    move-object v4, v0

    :goto_68
    move-object v0, v1

    goto :goto_70

    :catch_6a
    move-object v4, v0

    goto :goto_79

    :catch_6c
    move-object v4, v0

    goto :goto_7f

    :catchall_6e
    move-exception p2

    move-object v4, v0

    .line 18
    :goto_70
    :try_start_70
    invoke-direct {p0, v0}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 19
    invoke-direct {p0, v4}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 20
    throw p2

    :catch_77
    move-object v1, v0

    move-object v4, v1

    .line 21
    :catch_79
    :goto_79
    invoke-direct {p0, v1}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_49

    :catch_7d
    move-object v1, v0

    move-object v4, v1

    :catch_7f
    :goto_7f
    invoke-direct {p0, v1}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_49

    :catch_83
    :goto_83
    move v1, v2

    goto :goto_9

    :cond_85
    const-string p2, "FATAL! Couldn\'t extract the library from the APK!"

    .line 22
    invoke-virtual {p5, p2}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_70 .. :try_end_8a} :catchall_98

    .line 23
    :try_start_8a
    iget-object p1, p1, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz p1, :cond_91

    .line 24
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_91} :catch_91

    :catch_91
    :cond_91
    return-void

    .line 25
    :cond_92
    :try_start_92
    new-instance p2, Lpl/droidsonroids/relinker/MissingLibraryException;

    invoke-direct {p2, p3}, Lpl/droidsonroids/relinker/MissingLibraryException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_98
    .catchall {:try_start_92 .. :try_end_98} :catchall_98

    :catchall_98
    move-exception p2

    move-object v0, p1

    goto :goto_9c

    :catchall_9b
    move-exception p2

    :goto_9c
    if-eqz v0, :cond_a5

    .line 26
    :try_start_9e
    iget-object p1, v0, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz p1, :cond_a5

    .line 27
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a5} :catch_a5

    .line 28
    :catch_a5
    :cond_a5
    throw p2
.end method
