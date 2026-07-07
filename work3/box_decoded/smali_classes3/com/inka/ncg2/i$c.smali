.class Lcom/inka/ncg2/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inka/ncg2/Ncg2Agent$NcgFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inka/ncg2/i$c$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/inka/ncg2/i;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

.field private f:J


# direct methods
.method constructor <init>(Lcom/inka/ncg2/i;)V
    .locals 0

    .line 2230
    iput-object p1, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2224
    iput-boolean p1, p0, Lcom/inka/ncg2/i$c;->b:Z

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 4

    .line 2388
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2392
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/inka/ncg2/i$c;->f:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/inka/ncg/jni/NcgCoreWrapper;->openAndVerifyFile(JLjava/lang/String;I)I

    move-result p1

    return p1

    .line 2389
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call Ncg2Agent.init() method first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/inka/ncg2/i$c;)Z
    .locals 0

    .line 2222
    iget-boolean p0, p0, Lcom/inka/ncg2/i$c;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/inka/ncg2/i$c;)Z
    .locals 0

    .line 2222
    iget-boolean p0, p0, Lcom/inka/ncg2/i$c;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/inka/ncg2/i$c;)J
    .locals 2

    .line 2222
    iget-wide v0, p0, Lcom/inka/ncg2/i$c;->f:J

    return-wide v0
.end method


# virtual methods
.method public a()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/SdcardIdNotMatchedException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 2565
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2572
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->c(Lcom/inka/ncg2/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inka/ncg/jni/Util;->isHttp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2573
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->c(Lcom/inka/ncg2/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inka/ncg2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2574
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->c(Lcom/inka/ncg2/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inka/ncg2/i;->getHeaderInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

    .line 2578
    :cond_0
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/inka/ncg2/i$c;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->setLicense(J)I

    move-result v0

    const v1, -0xffff9cf

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    const v1, -0xffff9ef

    if-eq v1, v0, :cond_2

    const v1, -0xffff9ee

    if-ne v1, v0, :cond_3

    .line 2585
    :cond_2
    iget-object v1, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-virtual {v1}, Lcom/inka/ncg2/i;->getCurrentSecureTime()Ljava/lang/String;

    move-result-object v1

    .line 2586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NCG_SetLicense] Current GMT Time ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NCG_Agent"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    .line 2566
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Ncg2Agent.init() method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3

    .line 2464
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/inka/ncg2/i$c;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->closeFile(J)V

    .line 2465
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/inka/ncg2/i$c;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->destroyNcgFileContext(J)V

    const/4 v0, 0x0

    .line 2467
    iput-boolean v0, p0, Lcom/inka/ncg2/i$c;->b:Z

    .line 2468
    iput-boolean v0, p0, Lcom/inka/ncg2/i$c;->c:Z

    return-void
.end method

.method public decreasePlayCount()I
    .locals 3

    .line 2553
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/inka/ncg2/i$c;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->decreaseRemainPlayCount(J)I

    move-result v0

    return v0
.end method

.method public getCurrentFilePointer()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 2529
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2533
    iget-boolean v0, p0, Lcom/inka/ncg2/i$c;->b:Z

    if-eqz v0, :cond_2

    .line 2536
    iget-boolean v0, p0, Lcom/inka/ncg2/i$c;->c:Z

    if-eqz v0, :cond_1

    .line 2539
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/inka/ncg2/i$c;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->NcgFile_ftell(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    .line 2541
    :cond_0
    new-instance v0, Lcom/inka/ncg2/Ncg2Exception;

    const-string v1, "NCG_ftell() failed!."

    invoke-direct {v0, v1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2537
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not Prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2534
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2530
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Ncg2Agent.init() method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeaderSize()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 2548
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/inka/ncg2/i$c;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getHeaderSize(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 2378
    new-instance v0, Lcom/inka/ncg2/i$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inka/ncg2/i$c$a;-><init>(Lcom/inka/ncg2/i$c;Lcom/inka/ncg2/i$1;)V

    return-object v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2InvalidNcgFileException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2400
    invoke-virtual {p0, p1, v0}, Lcom/inka/ncg2/i$c;->open(Ljava/lang/String;Z)V

    return-void
.end method

.method public open(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2InvalidNcgFileException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 2407
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->createNcgFileContext()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inka/ncg2/i$c;->f:J

    .line 2408
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-virtual {v0, p1}, Lcom/inka/ncg2/i;->isNcgContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2411
    iput-object p1, p0, Lcom/inka/ncg2/i$c;->d:Ljava/lang/String;

    .line 2412
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0, p1}, Lcom/inka/ncg2/i;->b(Lcom/inka/ncg2/i;Ljava/lang/String;)Ljava/lang/String;

    .line 2414
    invoke-direct {p0, p1}, Lcom/inka/ncg2/i$c;->a(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 2416
    new-instance p2, Lcom/inka/ncg2/Ncg2Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NCG_OpenNCGFile() failed!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2417
    invoke-static {p1}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;I)V

    .line 2419
    iget-object p1, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    iget-object p1, p1, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz p1, :cond_0

    .line 2420
    iget-object p1, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    iget-object p1, p1, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    invoke-interface {p1, p2}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 2422
    :cond_0
    throw p2

    :cond_1
    if-eqz p2, :cond_2

    .line 2426
    invoke-virtual {p0}, Lcom/inka/ncg2/i$c;->prepare()V

    :cond_2
    const/4 p1, 0x1

    .line 2428
    iput-boolean p1, p0, Lcom/inka/ncg2/i$c;->b:Z

    return-void

    .line 2409
    :cond_3
    new-instance p2, Lcom/inka/ncg2/Ncg2InvalidNcgFileException;

    invoke-direct {p2, p1}, Lcom/inka/ncg2/Ncg2InvalidNcgFileException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public prepare()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 2436
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->e:Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

    if-nez v0, :cond_0

    .line 2437
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->c(Lcom/inka/ncg2/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inka/ncg2/i;->getHeaderInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/inka/ncg2/i$c;->e:Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

    .line 2439
    :cond_0
    invoke-virtual {p0}, Lcom/inka/ncg2/i$c;->a()I

    move-result v3

    const/4 v0, 0x1

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2441
    iget-object v4, p0, Lcom/inka/ncg2/i$c;->d:Ljava/lang/String;

    aput-object v4, v1, v2

    .line 2444
    invoke-static {v3}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Invalid License Path : [%s]\nError Info:"

    .line 2441
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2446
    invoke-static {v3}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object v0

    .line 2447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    iget-object v4, p0, Lcom/inka/ncg2/i$c;->e:Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

    iget-object v4, v4, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->contentID:Ljava/lang/String;

    iget-object v5, p0, Lcom/inka/ncg2/i$c;->e:Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

    iget-object v5, v5, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->siteID:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/inka/ncg2/i;->getLicenseInfoByCID(Ljava/lang/String;Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2448
    new-instance v0, Lcom/inka/ncg2/Ncg2InvalidLicenseException;

    iget-object v1, p0, Lcom/inka/ncg2/i$c;->e:Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

    iget-object v4, v1, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->contentID:Ljava/lang/String;

    iget-object v1, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    .line 2452
    invoke-static {v1}, Lcom/inka/ncg2/i;->c(Lcom/inka/ncg2/i;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/inka/ncg2/Ncg2InvalidLicenseException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    iget-object v1, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    iget-object v1, v1, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz v1, :cond_1

    .line 2455
    iget-object v1, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    iget-object v1, v1, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    invoke-interface {v1, v0}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 2457
    :cond_1
    throw v0

    .line 2459
    :cond_2
    iput-boolean v0, p0, Lcom/inka/ncg2/i$c;->c:Z

    return-void
.end method

.method public read([BJ)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 2473
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2477
    iget-boolean v0, p0, Lcom/inka/ncg2/i$c;->b:Z

    if-eqz v0, :cond_2

    .line 2480
    iget-boolean v0, p0, Lcom/inka/ncg2/i$c;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 2484
    iget-object v1, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v1}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v1

    iget-wide v2, p0, Lcom/inka/ncg2/i$c;->f:J

    move-object v4, p1

    move-wide v5, p2

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/inka/ncg/jni/NcgCoreWrapper;->NcgFile_fread(J[BJ[J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2491
    aget-wide p1, v0, p1

    return-wide p1

    .line 2487
    :cond_0
    new-instance p2, Lcom/inka/ncg2/Ncg2Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NCG_fread() failed!."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2488
    invoke-static {p1}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 2481
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not Prepared"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2478
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 2474
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must call Ncg2Agent.init() method first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seek(JLcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 2497
    iget-object v0, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2501
    iget-boolean v0, p0, Lcom/inka/ncg2/i$c;->b:Z

    if-eqz v0, :cond_4

    .line 2504
    iget-boolean v0, p0, Lcom/inka/ncg2/i$c;->c:Z

    if-eqz v0, :cond_3

    .line 2512
    sget-object v0, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;->Begin:Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

    if-ne p3, v0, :cond_0

    const/4 p3, 0x0

    const/4 v5, 0x0

    goto :goto_0

    .line 2514
    :cond_0
    sget-object v0, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;->Current:Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

    if-ne p3, v0, :cond_1

    const/4 p3, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    const/4 v5, 0x2

    .line 2519
    :goto_0
    iget-object p3, p0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {p3}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/inka/ncg2/i$c;->f:J

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/inka/ncg/jni/NcgCoreWrapper;->NcgFile_fseek(JJI)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 2521
    :cond_2
    new-instance p2, Lcom/inka/ncg2/Ncg2Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NCG_fseek() failed!."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2522
    invoke-static {p1}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 2505
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not Prepared"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2502
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 2498
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must call Ncg2Agent.init() method first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
