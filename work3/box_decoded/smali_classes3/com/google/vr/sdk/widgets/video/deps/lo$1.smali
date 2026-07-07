.class Lcom/google/vr/sdk/widgets/video/deps/lo$1;
.super Ljava/lang/Object;
.source "SubtitleDecoderFactory.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/lo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/lo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/l;)Z
    .locals 1

    .line 2
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    const-string v0, "text/vtt"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text/x-ssa"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ttml+xml"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-mp4-vtt"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-subrip"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-quicktime-tx3g"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-608"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-mp4-cea-608"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-708"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/dvbsubs"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/pgs"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public b(Lcom/google/vr/sdk/widgets/video/deps/l;)Lcom/google/vr/sdk/widgets/video/deps/lm;
    .locals 3

    .line 15
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "application/ttml+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "application/x-subrip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "application/cea-708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "application/cea-608"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_4
    const-string v1, "application/x-mp4-cea-608"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_5
    const-string v1, "text/x-ssa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "application/x-quicktime-tx3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_7
    const-string v1, "text/vtt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_8
    const-string v1, "application/x-mp4-vtt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_9
    const-string v1, "application/pgs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_a
    const-string v1, "application/dvbsubs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempted to create decoder for unsupported format"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :pswitch_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/mj;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/mj;-><init>()V

    return-object p1

    .line 20
    :pswitch_1
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/mh;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/mh;-><init>()V

    return-object p1

    .line 23
    :pswitch_2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/lv;

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/lv;-><init>(ILjava/util/List;)V

    return-object v0

    .line 22
    :pswitch_3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/lt;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    invoke-direct {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/lt;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 17
    :pswitch_4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/mf;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/mf;-><init>(Ljava/util/List;)V

    return-object v0

    .line 21
    :pswitch_5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/mp;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/mp;-><init>(Ljava/util/List;)V

    return-object v0

    .line 16
    :pswitch_6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/mx;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/mx;-><init>()V

    return-object p1

    .line 18
    :pswitch_7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ms;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/ms;-><init>()V

    return-object p1

    .line 25
    :pswitch_8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/md;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/md;-><init>()V

    return-object p1

    .line 24
    :pswitch_9
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ma;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ma;-><init>(Ljava/util/List;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_a
        -0x4a6813e3 -> :sswitch_9
        -0x3d28a9ba -> :sswitch_8
        -0x3be2f26c -> :sswitch_7
        0x2935f49f -> :sswitch_6
        0x310bebca -> :sswitch_5
        0x37713300 -> :sswitch_4
        0x5d578071 -> :sswitch_3
        0x5d578432 -> :sswitch_2
        0x63771bad -> :sswitch_1
        0x64f8068a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
