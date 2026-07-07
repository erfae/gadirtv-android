.class public Landroidmads/library/qrgenearator/QRGEncoder;
.super Ljava/lang/Object;
.source "QRGEncoder.java"


# instance fields
.field private BLACK:I

.field private WHITE:I

.field private contents:Ljava/lang/String;

.field private dimension:I

.field private displayContents:Ljava/lang/String;

.field private encoded:Z

.field private format:Lcom/google/zxing/BarcodeFormat;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->WHITE:I

    const/high16 v0, -0x1000000

    .line 22
    iput v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->BLACK:I

    const/high16 v0, -0x80000000

    .line 23
    iput v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->dimension:I

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->encoded:Z

    .line 56
    iput p4, p0, Landroidmads/library/qrgenearator/QRGEncoder;->dimension:I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroidmads/library/qrgenearator/QRGEncoder;->encodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->encoded:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    .line 21
    iput p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->WHITE:I

    const/high16 p2, -0x1000000

    .line 22
    iput p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->BLACK:I

    const/high16 p2, -0x80000000

    .line 23
    iput p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->dimension:I

    const/4 p2, 0x0

    .line 24
    iput-object p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->encoded:Z

    const-string v0, "TEXT_TYPE"

    .line 47
    invoke-direct {p0, p1, p2, v0}, Landroidmads/library/qrgenearator/QRGEncoder;->encodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->encoded:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    .line 21
    iput p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->WHITE:I

    const/high16 p2, -0x1000000

    .line 22
    iput p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->BLACK:I

    const/high16 p2, -0x80000000

    .line 23
    iput p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->dimension:I

    const/4 p2, 0x0

    .line 24
    iput-object p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->encoded:Z

    .line 51
    iput p3, p0, Landroidmads/library/qrgenearator/QRGEncoder;->dimension:I

    const-string p3, "TEXT_TYPE"

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidmads/library/qrgenearator/QRGEncoder;->encodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->encoded:Z

    return-void
.end method

.method private encodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2

    .line 66
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 67
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne v0, v1, :cond_0

    .line 68
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroidmads/library/qrgenearator/QRGEncoder;->encodeQRCodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 71
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "Text"

    .line 73
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    .line 75
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private encodeQRCodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    .line 79
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "EMAIL_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "TEXT_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "LOCATION_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "SMS_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "CONTACT_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "PHONE_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 88
    :pswitch_0
    invoke-direct {p0, p1}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mailto:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "E-Mail"

    .line 92
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_1
    if-eqz p1, :cond_11

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_11

    .line 82
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "Text"

    .line 84
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_2
    if-eqz p2, :cond_11

    const-string p1, "LAT"

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    .line 184
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    const-string v0, "LONG"

    .line 185
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p2

    cmpl-float v0, p1, p3

    if-eqz v0, :cond_11

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_11

    .line 187
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "geo:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 188
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "Location"

    .line 189
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    goto/16 :goto_5

    .line 104
    :pswitch_3
    invoke-direct {p0, p1}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sms:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "SMS"

    .line 108
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_4
    if-eqz p2, :cond_11

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p3, 0x64

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "VCARD:"

    .line 116
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "name"

    .line 118
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/16 v2, 0x3b

    if-eqz p3, :cond_6

    const-string v3, "N:"

    .line 120
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Landroidmads/library/qrgenearator/QRGEncoder;->escapeVCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string p3, "postal"

    .line 124
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/16 v3, 0xa

    if-eqz p3, :cond_7

    const-string v4, "ADR:"

    .line 126
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Landroidmads/library/qrgenearator/QRGEncoder;->escapeVCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_7
    new-instance p3, Ljava/util/HashSet;

    sget-object v4, Landroidmads/library/qrgenearator/QRGContents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {p3, v4}, Ljava/util/HashSet;-><init>(I)V

    const/4 v4, 0x0

    .line 131
    :goto_1
    sget-object v5, Landroidmads/library/qrgenearator/QRGContents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_9

    .line 132
    sget-object v5, Landroidmads/library/qrgenearator/QRGContents;->PHONE_KEYS:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 134
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 137
    :cond_9
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "TEL:"

    .line 138
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Landroidmads/library/qrgenearator/QRGEncoder;->escapeVCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 143
    :cond_a
    new-instance p3, Ljava/util/HashSet;

    sget-object v4, Landroidmads/library/qrgenearator/QRGContents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {p3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 144
    :goto_3
    sget-object v4, Landroidmads/library/qrgenearator/QRGContents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_c

    .line 145
    sget-object v4, Landroidmads/library/qrgenearator/QRGContents;->EMAIL_KEYS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 147
    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 150
    :cond_c
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "EMAIL:"

    .line 151
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Landroidmads/library/qrgenearator/QRGEncoder;->escapeVCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_d
    const-string p3, "URL_KEY"

    .line 155
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_e

    const-string v1, "URL:"

    .line 158
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string p3, "NOTE_KEY"

    .line 162
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_f

    const-string p3, "NOTE:"

    .line 164
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Landroidmads/library/qrgenearator/QRGEncoder;->escapeVCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_10

    .line 170
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "Contact"

    .line 173
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    goto :goto_5

    :cond_10
    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 176
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    goto :goto_5

    .line 96
    :pswitch_5
    invoke-direct {p0, p1}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "tel:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "Phone"

    .line 100
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    :cond_11
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4e09e475 -> :sswitch_5
        -0x27f26fe7 -> :sswitch_4
        0x2a45da80 -> :sswitch_3
        0x506b3984 -> :sswitch_2
        0x6a03370c -> :sswitch_1
        0x6d46ba1d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private escapeVCard(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p1, :cond_4

    const/16 v0, 0x3a

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x3b

    if-gez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 251
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v0, :cond_1

    if-ne v5, v2, :cond_2

    :cond_1
    const/16 v6, 0x5c

    .line 253
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 257
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_1
    return-object p1
.end method

.method private guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 228
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 229
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    const-string p1, "UTF-8"

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 240
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 11

    .line 197
    iget-boolean v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->encoded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 200
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidmads/library/qrgenearator/QRGEncoder;->guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 203
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v2

    goto :goto_0

    :cond_1
    move-object v9, v1

    .line 205
    :goto_0
    new-instance v4, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v4}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 206
    iget-object v5, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    iget-object v6, p0, Landroidmads/library/qrgenearator/QRGEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    iget v8, p0, Landroidmads/library/qrgenearator/QRGEncoder;->dimension:I

    move v7, v8

    invoke-virtual/range {v4 .. v9}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    .line 208
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    mul-int v2, v8, v9

    .line 209
    new-array v3, v2, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_4

    mul-int v5, v4, v8

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_3

    add-int v7, v5, v6

    .line 214
    invoke-virtual {v0, v6, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Landroidmads/library/qrgenearator/QRGEncoder;->getColorBlack()I

    move-result v10

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroidmads/library/qrgenearator/QRGEncoder;->getColorWhite()I

    move-result v10

    :goto_3
    aput v10, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 218
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move v5, v8

    .line 219
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public getColorBlack()I
    .locals 1

    .line 43
    iget v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->BLACK:I

    return v0
.end method

.method public getColorWhite()I
    .locals 1

    .line 39
    iget v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->WHITE:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setColorBlack(I)V
    .locals 0

    .line 35
    iput p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->BLACK:I

    return-void
.end method

.method public setColorWhite(I)V
    .locals 0

    .line 31
    iput p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->WHITE:I

    return-void
.end method
