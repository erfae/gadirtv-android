.class final Lcom/google/ads/interactivemedia/v3/internal/lj;
.super Lcom/google/ads/interactivemedia/v3/internal/lr;
.source "IMASDK"


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/internal/io;

.field private b:Lcom/google/ads/interactivemedia/v3/internal/li;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/lr;-><init>()V

    return-void
.end method

.method private static a([B)Z
    .locals 2

    const/4 v0, 0x0

    .line 2
    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)J
    .locals 4

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/lj;->a([B)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    const/4 v1, 0x2

    .line 4
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    shr-int/2addr v0, v1

    const/4 v2, 0x6

    const/4 v3, 0x7

    if-eq v0, v2, :cond_0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x7

    .line 5
    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->y()J

    .line 7
    :cond_1
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)I

    move-result v0

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    int-to-long v0, v0

    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected final a(Z)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/lr;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lj;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lj;->b:Lcom/google/ads/interactivemedia/v3/internal/li;

    :cond_0
    return-void
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/abr;JLcom/google/ads/interactivemedia/v3/internal/lp;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/lj;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    if-nez v1, :cond_0

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/io;

    const/16 p3, 0x11

    .line 9
    invoke-direct {p2, v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/io;-><init>([BI)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lj;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    const/16 p3, 0x9

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result p1

    .line 10
    invoke-static {v0, p3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p3, 0x0

    .line 11
    invoke-virtual {p2, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/io;->a([BLcom/google/ads/interactivemedia/v3/internal/ot;)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p1

    iput-object p1, p4, Lcom/google/ads/interactivemedia/v3/internal/lp;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 12
    aget-byte v3, v0, v2

    and-int/lit8 v3, v3, 0x7f

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 13
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;)Lcom/google/ads/interactivemedia/v3/internal/in;

    move-result-object p1

    .line 14
    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/io;->a(Lcom/google/ads/interactivemedia/v3/internal/in;)Lcom/google/ads/interactivemedia/v3/internal/io;

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lj;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/li;

    .line 15
    invoke-direct {p3, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/li;-><init>(Lcom/google/ads/interactivemedia/v3/internal/io;Lcom/google/ads/interactivemedia/v3/internal/in;)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/lj;->b:Lcom/google/ads/interactivemedia/v3/internal/li;

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/lj;->a([B)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lj;->b:Lcom/google/ads/interactivemedia/v3/internal/li;

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/li;->b(J)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lj;->b:Lcom/google/ads/interactivemedia/v3/internal/li;

    iput-object p1, p4, Lcom/google/ads/interactivemedia/v3/internal/lp;->b:Lcom/google/ads/interactivemedia/v3/internal/ln;

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
