.class Lcom/inka/ncg2/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inka/ncg2/Ncg2Agent$NcgCenc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/inka/ncg2/i;

.field private b:Z

.field private c:Z

.field private d:J


# direct methods
.method private constructor <init>(Lcom/inka/ncg2/i;)V
    .locals 2

    .line 2606
    iput-object p1, p0, Lcom/inka/ncg2/i$b;->a:Lcom/inka/ncg2/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2602
    iput-boolean p1, p0, Lcom/inka/ncg2/i$b;->b:Z

    .line 2603
    iput-boolean p1, p0, Lcom/inka/ncg2/i$b;->c:Z

    const-wide/16 v0, 0x0

    .line 2604
    iput-wide v0, p0, Lcom/inka/ncg2/i$b;->d:J

    .line 2607
    iput-boolean p1, p0, Lcom/inka/ncg2/i$b;->b:Z

    .line 2608
    iput-boolean p1, p0, Lcom/inka/ncg2/i$b;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/inka/ncg2/i;Lcom/inka/ncg2/i$1;)V
    .locals 0

    .line 2601
    invoke-direct {p0, p1}, Lcom/inka/ncg2/i$b;-><init>(Lcom/inka/ncg2/i;)V

    return-void
.end method


# virtual methods
.method public clearCencDecrypt()V
    .locals 6

    const/4 v0, 0x0

    .line 2742
    iput-boolean v0, p0, Lcom/inka/ncg2/i$b;->c:Z

    .line 2744
    iget-boolean v1, p0, Lcom/inka/ncg2/i$b;->b:Z

    if-eqz v1, :cond_0

    .line 2747
    iget-object v1, p0, Lcom/inka/ncg2/i$b;->a:Lcom/inka/ncg2/i;

    invoke-static {v1}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v1

    iget-wide v2, p0, Lcom/inka/ncg2/i$b;->d:J

    invoke-virtual {v1, v2, v3}, Lcom/inka/ncg/jni/NcgCoreWrapper;->clearCencDecrypt(J)V

    .line 2748
    iput-boolean v0, p0, Lcom/inka/ncg2/i$b;->b:Z

    .line 2751
    :cond_0
    iget-wide v0, p0, Lcom/inka/ncg2/i$b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2753
    iget-object v0, p0, Lcom/inka/ncg2/i$b;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    iget-wide v4, p0, Lcom/inka/ncg2/i$b;->d:J

    invoke-virtual {v0, v4, v5}, Lcom/inka/ncg/jni/NcgCoreWrapper;->destroyNcgCencContext(J)V

    .line 2754
    iput-wide v2, p0, Lcom/inka/ncg2/i$b;->d:J

    :cond_1
    return-void
.end method

.method public decryptCencSample([BI[I[I[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2CencException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 2680
    iget-boolean v0, p0, Lcom/inka/ncg2/i$b;->b:Z

    if-eqz v0, :cond_4

    .line 2685
    iget-boolean v0, p0, Lcom/inka/ncg2/i$b;->c:Z

    if-eqz v0, :cond_3

    .line 2694
    array-length v0, p5

    new-array v0, v0, [B

    .line 2695
    array-length v1, p5

    new-array v6, v1, [B

    .line 2698
    array-length v1, p1

    const/16 v2, 0x10

    const/4 v9, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 2714
    aget v3, p3, v1

    add-int/2addr v2, v3

    .line 2717
    aget v3, p4, v1

    invoke-static {p5, v2, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2718
    aget v3, p4, v1

    add-int/2addr v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2722
    :cond_0
    new-array v1, v7, [B

    .line 2723
    iget-object v2, p0, Lcom/inka/ncg2/i$b;->a:Lcom/inka/ncg2/i;

    invoke-static {v2}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v2

    iget-wide v3, p0, Lcom/inka/ncg2/i$b;->d:J

    move-object v5, p1

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lcom/inka/ncg/jni/NcgCoreWrapper;->decryptCencSample(J[B[BI[B)I

    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v9, p2, :cond_1

    .line 2728
    aget v3, p3, v9

    invoke-static {p5, p1, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2729
    aget v3, p3, v9

    add-int/2addr p1, v3

    .line 2732
    aget v3, p4, v9

    invoke-static {v1, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2733
    aget v3, p4, v9

    add-int/2addr p1, v3

    .line 2734
    aget v3, p4, v9

    add-int/2addr v2, v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 2699
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v9

    const-string p1, "IV length is [%d] bytes. It must be 16 bytes."

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2700
    new-instance p2, Lcom/inka/ncg2/Ncg2CencException;

    invoke-direct {p2, p1}, Lcom/inka/ncg2/Ncg2CencException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2688
    :cond_3
    new-instance p1, Lcom/inka/ncg2/Ncg2CencException;

    const-string p2, "No license is set.\nsetLicense() is required."

    invoke-direct {p1, p2}, Lcom/inka/ncg2/Ncg2CencException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2683
    :cond_4
    new-instance p1, Lcom/inka/ncg2/Ncg2CencException;

    const-string p2, "Ncg2Cenc is not prepared.\nprepareCencDecrypt() is required."

    invoke-direct {p1, p2}, Lcom/inka/ncg2/Ncg2CencException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepareCencDecrypt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2CencException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2614
    iput-boolean v0, p0, Lcom/inka/ncg2/i$b;->c:Z

    .line 2616
    iget-boolean v1, p0, Lcom/inka/ncg2/i$b;->b:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/inka/ncg2/i$b;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    return v0

    .line 2624
    :cond_0
    iget-object v1, p0, Lcom/inka/ncg2/i$b;->a:Lcom/inka/ncg2/i;

    invoke-static {v1}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->createNcgCencContext()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/inka/ncg2/i$b;->d:J

    .line 2626
    iget-object v1, p0, Lcom/inka/ncg2/i$b;->a:Lcom/inka/ncg2/i;

    invoke-static {v1}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v1

    iget-wide v2, p0, Lcom/inka/ncg2/i$b;->d:J

    invoke-virtual {v1, v2, v3}, Lcom/inka/ncg/jni/NcgCoreWrapper;->prepareCencDecrypt(J)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 2630
    iput-boolean v0, p0, Lcom/inka/ncg2/i$b;->b:Z

    return v1

    .line 2634
    :cond_1
    iput-boolean v0, p0, Lcom/inka/ncg2/i$b;->b:Z

    .line 2635
    new-instance v0, Lcom/inka/ncg2/Ncg2CencException;

    const-string v1, "Failed to prepare."

    invoke-direct {v0, v1}, Lcom/inka/ncg2/Ncg2CencException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLicense(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2CencException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2644
    iput-boolean v0, p0, Lcom/inka/ncg2/i$b;->c:Z

    .line 2646
    iget-boolean v0, p0, Lcom/inka/ncg2/i$b;->b:Z

    if-eqz v0, :cond_4

    .line 2653
    iget-object v0, p0, Lcom/inka/ncg2/i$b;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/inka/ncg2/i$b;->d:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->setLicenseForCenc(JLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    const v0, -0xffff9ef

    if-eq v0, v5, :cond_0

    const v0, -0xffff9ee

    if-ne v0, v5, :cond_1

    .line 2657
    :cond_0
    iget-object v0, p0, Lcom/inka/ncg2/i$b;->a:Lcom/inka/ncg2/i;

    invoke-virtual {v0}, Lcom/inka/ncg2/i;->getCurrentSecureTime()Ljava/lang/String;

    move-result-object v0

    .line 2658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NCG_SetLicense] Current GMT Time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NCG_Agent"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v5, :cond_3

    .line 2661
    invoke-static {v5}, Lcom/inka/ncg/jni/Ncg2CoreErrorCode;->getErrorMsgFromErrCode(I)Ljava/lang/String;

    move-result-object v4

    .line 2662
    iget-object v0, p0, Lcom/inka/ncg2/i$b;->a:Lcom/inka/ncg2/i;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg2/i;->getLicenseInfoByCID(Ljava/lang/String;Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2663
    new-instance p2, Lcom/inka/ncg2/Ncg2InvalidLicenseException;

    const-string v7, ""

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/inka/ncg2/Ncg2InvalidLicenseException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2665
    iget-object p1, p0, Lcom/inka/ncg2/i$b;->a:Lcom/inka/ncg2/i;

    iget-object p1, p1, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz p1, :cond_2

    .line 2666
    iget-object p1, p0, Lcom/inka/ncg2/i$b;->a:Lcom/inka/ncg2/i;

    iget-object p1, p1, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    invoke-interface {p1, p2}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    .line 2668
    :cond_2
    throw p2

    :cond_3
    const/4 p1, 0x1

    .line 2671
    iput-boolean p1, p0, Lcom/inka/ncg2/i$b;->c:Z

    return v5

    .line 2649
    :cond_4
    new-instance p1, Lcom/inka/ncg2/Ncg2CencException;

    const-string p2, "Ncg2Cenc is not prepared.\nprepareCencDecrypt() is required."

    invoke-direct {p1, p2}, Lcom/inka/ncg2/Ncg2CencException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
