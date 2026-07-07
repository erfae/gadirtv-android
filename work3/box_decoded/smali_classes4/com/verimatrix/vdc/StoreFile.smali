.class public Lcom/verimatrix/vdc/StoreFile;
.super Ljava/lang/Object;
.source "StoreFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mDeviceId:Ljava/lang/String;


# instance fields
.field private mAESCryptoUtils:Lcom/verimatrix/vdc/AESCryptoUtils;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFileReader:Ljava/io/FileInputStream;

.field private mFileWriter:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/verimatrix/vdc/MonitorLogin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 23
    sput-object v0, Lcom/verimatrix/vdc/StoreFile;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "vdcstore.dat"

    .line 19
    iput-object v0, p0, Lcom/verimatrix/vdc/StoreFile;->mFileName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/verimatrix/vdc/StoreFile;->mFileWriter:Ljava/io/FileOutputStream;

    .line 21
    iput-object v0, p0, Lcom/verimatrix/vdc/StoreFile;->mFileReader:Ljava/io/FileInputStream;

    .line 22
    iput-object v0, p0, Lcom/verimatrix/vdc/StoreFile;->mAESCryptoUtils:Lcom/verimatrix/vdc/AESCryptoUtils;

    .line 45
    invoke-direct {p0}, Lcom/verimatrix/vdc/StoreFile;->initFields()V

    const-string v0, "/sdcard/"

    .line 46
    iput-object v0, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "vdcstore.dat"

    .line 19
    iput-object v0, p0, Lcom/verimatrix/vdc/StoreFile;->mFileName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/verimatrix/vdc/StoreFile;->mFileWriter:Ljava/io/FileOutputStream;

    .line 21
    iput-object v0, p0, Lcom/verimatrix/vdc/StoreFile;->mFileReader:Ljava/io/FileInputStream;

    .line 22
    iput-object v0, p0, Lcom/verimatrix/vdc/StoreFile;->mAESCryptoUtils:Lcom/verimatrix/vdc/AESCryptoUtils;

    .line 51
    invoke-direct {p0}, Lcom/verimatrix/vdc/StoreFile;->initFields()V

    .line 52
    iput-object p1, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method private GenerateIntegrityHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 614
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/verimatrix/vdc/AESCryptoUtils;->sha256Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private GetStoreFileLength()J
    .locals 3

    .line 608
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verimatrix/vdc/StoreFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method private IsIntegrityVerified(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    .locals 2

    .line 585
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 589
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/StoreFile;->GenerateIntegrityHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 590
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 592
    sget-object p1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string p2, "Invalid hash data, hash validation failed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedIntegrity:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    .line 596
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 600
    sget-object p2, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Integrity Verification failed error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedIntegrity:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    :goto_0
    return-object p1
.end method

.method private closeStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    .locals 4

    .line 560
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/verimatrix/vdc/StoreFile;->mFileWriter:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 566
    iput-object v1, p0, Lcom/verimatrix/vdc/StoreFile;->mFileWriter:Ljava/io/FileOutputStream;

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/StoreFile;->mFileReader:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    .line 570
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 571
    iput-object v1, p0, Lcom/verimatrix/vdc/StoreFile;->mFileReader:Ljava/io/FileInputStream;

    .line 573
    :cond_1
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 577
    sget-object v1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/verimatrix/vdc/StoreFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedClose:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    :goto_0
    return-object v0
.end method

.method private initFields()V
    .locals 3

    .line 57
    sget-object v0, Lcom/verimatrix/vdc/StoreFile;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorAgent;->GetDeviceIdHashedValue()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verimatrix/vdc/StoreFile;->mDeviceId:Ljava/lang/String;

    .line 61
    :cond_0
    sget-object v0, Lcom/verimatrix/vdc/StoreFile;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    sget-object v0, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get device Id to generate key from KDA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_1
    sget-object v0, Lcom/verimatrix/vdc/StoreFile;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/verimatrix/vdc/KDA;->DeriveKey(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 67
    fill-array-data v1, :array_0

    .line 70
    :try_start_0
    new-instance v2, Lcom/verimatrix/vdc/AESCryptoUtils;

    invoke-direct {v2, v0, v1}, Lcom/verimatrix/vdc/AESCryptoUtils;-><init>([B[B)V

    iput-object v2, p0, Lcom/verimatrix/vdc/StoreFile;->mAESCryptoUtils:Lcom/verimatrix/vdc/AESCryptoUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    sget-object v0, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v1, "Error constructing AESCryptoUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    :array_0
    .array-data 1
        -0x2et
        -0x39t
        0xat
        0x72t
        -0x56t
        0x34t
        0x11t
        -0x22t
        0x2et
        0x13t
        -0x41t
        0x44t
        0x19t
        -0x57t
        -0x46t
        0x5t
    .end array-data
.end method

.method private openStoreForRead()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    .locals 4

    .line 534
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/verimatrix/vdc/StoreFile;->mFileReader:Ljava/io/FileInputStream;

    if-eqz v1, :cond_0

    return-object v0

    .line 541
    :cond_0
    invoke-direct {p0}, Lcom/verimatrix/vdc/StoreFile;->closeStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v0

    .line 542
    sget-object v1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v0, v1, :cond_1

    .line 544
    sget-object v1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v2, "Failed to close store file in openStoreForWrite"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 547
    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verimatrix/vdc/StoreFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/verimatrix/vdc/StoreFile;->mFileReader:Ljava/io/FileInputStream;

    .line 548
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 552
    sget-object v1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/verimatrix/vdc/StoreFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedOpen:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    :goto_0
    return-object v0
.end method

.method private openStoreForWrite()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    .locals 4

    .line 508
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/verimatrix/vdc/StoreFile;->mFileWriter:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    return-object v0

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/verimatrix/vdc/StoreFile;->closeStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v0

    .line 516
    sget-object v1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v0, v1, :cond_1

    .line 518
    sget-object v1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v2, "Failed to close store file in openStoreForWrite"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 521
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verimatrix/vdc/StoreFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/verimatrix/vdc/StoreFile;->mFileWriter:Ljava/io/FileOutputStream;

    .line 522
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 526
    sget-object v1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/verimatrix/vdc/StoreFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedOpen:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    :goto_0
    return-object v0
.end method

.method private readAllFields(Lorg/json/JSONArray;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    .locals 5

    const-string v0, "hash"

    .line 452
    sget-object v1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 455
    :try_start_0
    invoke-direct {p0}, Lcom/verimatrix/vdc/StoreFile;->openStoreForRead()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v1

    .line 456
    sget-object v2, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v1, v2, :cond_0

    .line 458
    sget-object p1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v0, "Failed to open store file in readAllFields"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 463
    :cond_0
    invoke-direct {p0}, Lcom/verimatrix/vdc/StoreFile;->GetStoreFileLength()J

    move-result-wide v1

    long-to-int v2, v1

    new-array v1, v2, [B

    .line 464
    iget-object v2, p0, Lcom/verimatrix/vdc/StoreFile;->mFileReader:Ljava/io/FileInputStream;

    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 465
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 470
    sget-object p1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v0, "Invalid Store file, hash doesnot exists in readAllFields, deleting store file"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-direct {p0}, Lcom/verimatrix/vdc/StoreFile;->closeStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 472
    invoke-virtual {p0}, Lcom/verimatrix/vdc/StoreFile;->deleteStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 473
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->BadFile:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    .line 477
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 479
    invoke-direct {p0, v2, v1}, Lcom/verimatrix/vdc/StoreFile;->IsIntegrityVerified(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v0

    .line 480
    sget-object v1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v0, v1, :cond_2

    .line 482
    sget-object p1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v0, "Invalid Store file, integrity verification failed in readAllFields, deleting store file"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-direct {p0}, Lcom/verimatrix/vdc/StoreFile;->closeStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 484
    invoke-virtual {p0}, Lcom/verimatrix/vdc/StoreFile;->deleteStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 485
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedIntegrity:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    .line 489
    :cond_2
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 490
    invoke-direct {p0}, Lcom/verimatrix/vdc/StoreFile;->closeStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object p1

    .line 491
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq p1, v0, :cond_3

    .line 493
    sget-object v0, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v1, "Failed to close store file in writeField"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 496
    :cond_3
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 500
    sget-object v0, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read all field in readAllFields from Store file error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedRead:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public createStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    .locals 6

    const-string v0, " at "

    const-string v1, "Failed to create Store file "

    .line 79
    sget-object v2, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 82
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/verimatrix/vdc/StoreFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    sget-object v3, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Store file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " already exists at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 89
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    sget-object v2, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedCreate:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object v0

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/verimatrix/vdc/StoreFile;->openStoreForWrite()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v2

    .line 98
    sget-object v3, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v2, v3, :cond_2

    .line 100
    sget-object v3, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v4, "Failed to open store file in createStore"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 104
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 105
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/verimatrix/vdc/StoreFile;->GenerateIntegrityHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "hash"

    .line 107
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    iget-object v3, p0, Lcom/verimatrix/vdc/StoreFile;->mFileWriter:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 110
    invoke-direct {p0}, Lcom/verimatrix/vdc/StoreFile;->closeStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v2

    .line 111
    sget-object v3, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v2, v3, :cond_3

    .line 113
    sget-object v3, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v4, "Failed to close store file in createStore"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 117
    :cond_3
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 121
    sget-object v3, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedCreate:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    :goto_0
    return-object v0
.end method

.method public deleteStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    .locals 6

    const-string v0, " at "

    const-string v1, "Failed to delete Store file "

    .line 130
    sget-object v2, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 133
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/verimatrix/vdc/StoreFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 136
    sget-object v3, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Store file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not exists at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 140
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    sget-object v2, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedDelete:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object v0

    .line 146
    :cond_1
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 150
    sget-object v3, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/verimatrix/vdc/StoreFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedDelete:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    :goto_0
    return-object v0
.end method

.method public readAll(Lorg/json/JSONArray;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    .locals 4

    .line 377
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 380
    :try_start_0
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/StoreFile;->readAllFields(Lorg/json/JSONArray;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v0

    .line 381
    sget-object v1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v0, v1, :cond_0

    .line 383
    sget-object p1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v1, "Failed to read store file in readAll"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 387
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 389
    sget-object p1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v0, "Invalid Store File, deleting store file in readAll"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p0}, Lcom/verimatrix/vdc/StoreFile;->deleteStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 391
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->BadFile:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 397
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 398
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 399
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 401
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 402
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 403
    iget-object v3, p0, Lcom/verimatrix/vdc/StoreFile;->mAESCryptoUtils:Lcom/verimatrix/vdc/AESCryptoUtils;

    if-nez v3, :cond_2

    .line 405
    sget-object p1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AESCryptoUtils is null, Failed to decrypt field "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value in readField"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedDecrypt:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    .line 409
    :cond_2
    invoke-virtual {v3, v2}, Lcom/verimatrix/vdc/AESCryptoUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 412
    sget-object p1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decrypt field "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value in readAll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedDecrypt:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    .line 416
    :cond_3
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 418
    :cond_4
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 422
    sget-object v0, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read fields from Store file error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedRead:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    :goto_1
    return-object p1
.end method

.method public readField(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    .locals 4

    .line 322
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 325
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 326
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/StoreFile;->readAllFields(Lorg/json/JSONArray;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v1

    .line 327
    sget-object v2, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v1, v2, :cond_0

    .line 329
    sget-object p2, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v0, "Failed to read store file in readField"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 333
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 335
    sget-object p2, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v0, "Invalid Store File, deleting store file in readField"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Lcom/verimatrix/vdc/StoreFile;->deleteStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 337
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->BadFile:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 342
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 343
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 345
    sget-object p2, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesnot exists in store file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedFieldNonExist:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    .line 349
    :cond_2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    iget-object v2, p0, Lcom/verimatrix/vdc/StoreFile;->mAESCryptoUtils:Lcom/verimatrix/vdc/AESCryptoUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, " value in readField"

    if-nez v2, :cond_3

    .line 352
    :try_start_1
    sget-object p2, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AESCryptoUtils is null, Failed to decrypt field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedDecrypt:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    .line 356
    :cond_3
    invoke-virtual {v2, v0}, Lcom/verimatrix/vdc/AESCryptoUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 359
    sget-object p2, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to decrypt field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedDecrypt:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    .line 363
    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 369
    sget-object v0, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from Store file error = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedRead:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    :goto_0
    return-object p1
.end method

.method public readPrivacyKey(Ljava/lang/StringBuilder;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    .locals 1

    if-nez p1, :cond_0

    .line 442
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->BadArgument:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    :cond_0
    const-string v0, "key"

    .line 446
    invoke-virtual {p0, v0, p1}, Lcom/verimatrix/vdc/StoreFile;->readField(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object p1

    return-object p1
.end method

.method public writeField(Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    .locals 3

    .line 159
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 162
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 163
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/StoreFile;->readAllFields(Lorg/json/JSONArray;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v1

    .line 164
    sget-object v2, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v1, v2, :cond_0

    .line 166
    sget-object p2, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v0, "Failed to read store file in writeField"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 169
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 171
    sget-object p2, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v0, "Invalid Store File, deleting store file in writeField"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Lcom/verimatrix/vdc/StoreFile;->deleteStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 173
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->BadFile:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/verimatrix/vdc/StoreFile;->mAESCryptoUtils:Lcom/verimatrix/vdc/AESCryptoUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, " value in writeField"

    if-nez v1, :cond_2

    .line 180
    :try_start_1
    sget-object p2, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AESCryptoUtils is null, Failed to encrypt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedEncrypt:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    :cond_2
    if-eqz p2, :cond_7

    .line 185
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 192
    :cond_3
    iget-object v1, p0, Lcom/verimatrix/vdc/StoreFile;->mAESCryptoUtils:Lcom/verimatrix/vdc/AESCryptoUtils;

    invoke-virtual {v1, p2}, Lcom/verimatrix/vdc/AESCryptoUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    .line 195
    sget-object p2, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to encrypt field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedEncrypt:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    :cond_4
    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 202
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/verimatrix/vdc/StoreFile;->GenerateIntegrityHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "hash"

    .line 206
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    invoke-direct {p0}, Lcom/verimatrix/vdc/StoreFile;->openStoreForWrite()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object p2

    .line 210
    sget-object v1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq p2, v1, :cond_5

    .line 212
    sget-object v0, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v1, "Failed to open store file in createStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 216
    :cond_5
    iget-object p2, p0, Lcom/verimatrix/vdc/StoreFile;->mFileWriter:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 218
    invoke-direct {p0}, Lcom/verimatrix/vdc/StoreFile;->closeStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object p2

    .line 219
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq p2, v0, :cond_6

    .line 221
    sget-object v0, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v1, "Failed to close store file in createStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 225
    :cond_6
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    goto :goto_1

    .line 187
    :cond_7
    :goto_0
    sget-object p2, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to be encrypted is not a valid value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedEncrypt:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 229
    sget-object v0, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in Store file error = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedWrite:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    :goto_1
    return-object p1
.end method

.method public writeFields(Lorg/json/JSONObject;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    .locals 5

    .line 237
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 240
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 241
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/StoreFile;->readAllFields(Lorg/json/JSONArray;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v1

    .line 242
    sget-object v2, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v1, v2, :cond_0

    .line 244
    sget-object p1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v0, "Failed to read store file in writeFields"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 247
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 249
    sget-object p1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v0, "Invalid Store File, deleting store file in writeFields"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/verimatrix/vdc/StoreFile;->deleteStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 251
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->BadFile:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 256
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 260
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 261
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 263
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 264
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    iget-object v4, p0, Lcom/verimatrix/vdc/StoreFile;->mAESCryptoUtils:Lcom/verimatrix/vdc/AESCryptoUtils;

    if-nez v4, :cond_2

    .line 267
    sget-object p1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AESCryptoUtils is null, Failed to encrypt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value in writeField"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedEncrypt:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    :cond_2
    if-eqz v3, :cond_5

    .line 272
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 279
    :cond_3
    iget-object v4, p0, Lcom/verimatrix/vdc/StoreFile;->mAESCryptoUtils:Lcom/verimatrix/vdc/AESCryptoUtils;

    invoke-virtual {v4, v3}, Lcom/verimatrix/vdc/AESCryptoUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 282
    sget-object p1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to encrypt field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value in writeFields"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedEncrypt:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    .line 286
    :cond_4
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 274
    :cond_5
    :goto_1
    sget-object p1, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to be encrypted is not a valid value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedEncrypt:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p1

    .line 290
    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/StoreFile;->GenerateIntegrityHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "hash"

    .line 291
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    invoke-direct {p0}, Lcom/verimatrix/vdc/StoreFile;->openStoreForWrite()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object p1

    .line 295
    sget-object v1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq p1, v1, :cond_7

    .line 297
    sget-object v0, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v1, "Failed to open store file in createStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 301
    :cond_7
    iget-object p1, p0, Lcom/verimatrix/vdc/StoreFile;->mFileWriter:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 303
    invoke-direct {p0}, Lcom/verimatrix/vdc/StoreFile;->closeStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object p1

    .line 304
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq p1, v0, :cond_8

    .line 306
    sget-object v0, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    const-string v1, "Failed to close store file in createStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 310
    :cond_8
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 314
    sget-object v0, Lcom/verimatrix/vdc/StoreFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write fields in Store file error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-object p1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedWrite:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    :goto_2
    return-object p1
.end method
