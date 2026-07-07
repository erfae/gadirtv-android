.class public final Lcom/google/vr/sdk/widgets/video/deps/md;
.super Lcom/google/vr/sdk/widgets/video/deps/lj;
.source "PgsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/md$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/md$a;

.field private d:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "PgsDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/lj;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/md$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/md$a;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md;->c:Lcom/google/vr/sdk/widgets/video/deps/md$a;

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;Lcom/google/vr/sdk/widgets/video/deps/md$a;)Lcom/google/vr/sdk/widgets/video/deps/li;
    .locals 5

    .line 22
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v0

    .line 23
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v1

    .line 24
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v2

    .line 25
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x0

    if-le v3, v0, :cond_0

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return-object v4

    :cond_0
    const/16 v0, 0x80

    if-eq v1, v0, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 35
    :pswitch_0
    invoke-static {p1, p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/md$a;->c(Lcom/google/vr/sdk/widgets/video/deps/md$a;Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    goto :goto_0

    .line 33
    :pswitch_1
    invoke-static {p1, p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/md$a;->b(Lcom/google/vr/sdk/widgets/video/deps/md$a;Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    goto :goto_0

    .line 31
    :pswitch_2
    invoke-static {p1, p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a(Lcom/google/vr/sdk/widgets/video/deps/md$a;Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a()Lcom/google/vr/sdk/widgets/video/deps/li;

    move-result-object v4

    .line 38
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/md$a;->b()V

    .line 40
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 2

    .line 16
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->f()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md;->d:Ljava/util/zip/Inflater;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md;->d:Ljava/util/zip/Inflater;

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/md;->d:Ljava/util/zip/Inflater;

    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;Lcom/google/vr/sdk/widgets/video/deps/pe;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/md;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BI)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a([BIZ)Lcom/google/vr/sdk/widgets/video/deps/ll;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    .line 6
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/md;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BI)V

    .line 7
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/md;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/md;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    .line 8
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/md;->c:Lcom/google/vr/sdk/widgets/video/deps/md$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/md$a;->b()V

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/md;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result p2

    const/4 p3, 0x3

    if-lt p2, p3, :cond_1

    .line 11
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/md;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/md;->c:Lcom/google/vr/sdk/widgets/video/deps/md$a;

    invoke-static {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/md;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;Lcom/google/vr/sdk/widgets/video/deps/md$a;)Lcom/google/vr/sdk/widgets/video/deps/li;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/me;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/me;-><init>(Ljava/util/List;)V

    return-object p2
.end method
