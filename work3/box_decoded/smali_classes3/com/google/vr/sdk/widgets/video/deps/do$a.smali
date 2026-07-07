.class final Lcom/google/vr/sdk/widgets/video/deps/do$a;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/dn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/do;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/do$a;->a:Lcom/google/vr/sdk/widgets/video/deps/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/do;Lcom/google/vr/sdk/widgets/video/deps/do$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/do$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/do;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    :sswitch_0
    const/4 p1, 0x5

    return p1

    :sswitch_1
    const/4 p1, 0x4

    return p1

    :sswitch_2
    const/4 p1, 0x1

    return p1

    :sswitch_3
    const/4 p1, 0x3

    return p1

    :sswitch_4
    const/4 p1, 0x2

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7672 -> :sswitch_1
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do$a;->a:Lcom/google/vr/sdk/widgets/video/deps/do;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(ID)V

    return-void
.end method

.method public a(IILcom/google/vr/sdk/widgets/video/deps/cs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do$a;->a:Lcom/google/vr/sdk/widgets/video/deps/do;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(IILcom/google/vr/sdk/widgets/video/deps/cs;)V

    return-void
.end method

.method public a(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do$a;->a:Lcom/google/vr/sdk/widgets/video/deps/do;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(IJ)V

    return-void
.end method

.method public a(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do$a;->a:Lcom/google/vr/sdk/widgets/video/deps/do;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(IJJ)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do$a;->a:Lcom/google/vr/sdk/widgets/video/deps/do;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(ILjava/lang/String;)V

    return-void
.end method

.method public b(I)Z
    .locals 1

    const v0, 0x1549a966

    if-eq p1, v0, :cond_1

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_1

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_1

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/do$a;->a:Lcom/google/vr/sdk/widgets/video/deps/do;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/do;->a(I)V

    return-void
.end method
