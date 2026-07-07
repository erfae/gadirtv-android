.class public final Lcom/google/ads/interactivemedia/v3/internal/ez;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field public static final synthetic a:I

.field private static final b:[I

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ez;->b:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ez;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/abq;)I
    .locals 2

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x20

    return p0

    :cond_0
    return v0
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/abq;Z)Lcom/google/ads/interactivemedia/v3/internal/ey;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    .line 7
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/ez;->a(Lcom/google/ads/interactivemedia/v3/internal/abq;)I

    move-result v0

    .line 8
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/ez;->b(Lcom/google/ads/interactivemedia/v3/internal/abq;)I

    move-result v1

    const/4 v2, 0x4

    .line 9
    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x13

    .line 10
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "mp4a.40."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x16

    const/4 v7, 0x5

    if-eq v0, v7, :cond_0

    const/16 v7, 0x1d

    if-ne v0, v7, :cond_1

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/ez;->b(Lcom/google/ads/interactivemedia/v3/internal/abq;)I

    move-result v1

    .line 12
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/ez;->a(Lcom/google/ads/interactivemedia/v3/internal/abq;)I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 13
    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v3

    :cond_1
    const/4 v7, 0x1

    if-eqz p1, :cond_e

    const/16 p1, 0x11

    const/4 v8, 0x6

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eq v0, v7, :cond_2

    if-eq v0, v9, :cond_2

    if-eq v0, v10, :cond_2

    if-eq v0, v2, :cond_2

    if-eq v0, v8, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    if-eq v0, p1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 25
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    .line 29
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported audio object type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "AacUtil"

    const-string v11, "Unexpected frameLengthFlag = 1"

    .line 15
    invoke-static {v2, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xe

    .line 17
    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 18
    :cond_4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v2

    if-eqz v3, :cond_d

    const/16 v11, 0x14

    if-eq v0, v8, :cond_6

    if-ne v0, v11, :cond_5

    const/16 v8, 0x14

    goto :goto_0

    :cond_5
    move v8, v0

    goto :goto_1

    :cond_6
    move v8, v0

    .line 20
    :goto_0
    invoke-virtual {p0, v10}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :goto_1
    if-eqz v2, :cond_a

    if-ne v8, v6, :cond_7

    const/16 v2, 0x10

    .line 21
    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :cond_7
    if-eq v8, p1, :cond_8

    if-eq v8, v5, :cond_8

    if-eq v8, v11, :cond_8

    const/16 p1, 0x17

    if-ne v8, p1, :cond_9

    .line 22
    :cond_8
    invoke-virtual {p0, v10}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 23
    :cond_9
    invoke-virtual {p0, v7}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    :cond_a
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_2

    .line 24
    :pswitch_2
    invoke-virtual {p0, v9}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result p0

    if-eq p0, v9, :cond_b

    if-eq p0, v10, :cond_c

    goto :goto_2

    :cond_b
    move v10, p0

    :cond_c
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x21

    .line 25
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unsupported epConfig: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 23
    :cond_e
    :goto_2
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/ez;->c:[I

    .line 26
    aget p0, p0, v3

    const/4 p1, -0x1

    if-eq p0, p1, :cond_f

    goto :goto_3

    :cond_f
    const/4 v7, 0x0

    .line 27
    :goto_3
    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ey;

    .line 28
    invoke-direct {p1, v1, p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/ey;-><init>(IILjava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static a([B)Lcom/google/ads/interactivemedia/v3/internal/ey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 30
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/abq;-><init>([B)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/ez;->a(Lcom/google/ads/interactivemedia/v3/internal/abq;Z)Lcom/google/ads/interactivemedia/v3/internal/ey;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/internal/abq;)I
    .locals 2

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/16 v0, 0x18

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result p0

    goto :goto_1

    :cond_0
    const/16 p0, 0xd

    if-ge v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 5
    :goto_0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/ez;->b:[I

    .line 6
    aget p0, p0, v0

    :goto_1
    return p0
.end method
