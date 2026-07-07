.class public final Lcom/google/vr/sdk/widgets/video/deps/id;
.super Lcom/google/vr/sdk/widgets/video/deps/hs;
.source "ExtractorMediaSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ia$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/id$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/nr$a;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/cu;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/oi;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:Ljava/lang/Object;

.field private h:J

.field private i:Z

.field private j:Lcom/google/vr/sdk/widgets/video/deps/oo;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr$a;Lcom/google/vr/sdk/widgets/video/deps/cu;Lcom/google/vr/sdk/widgets/video/deps/oi;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/hs;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->b:Lcom/google/vr/sdk/widgets/video/deps/nr$a;

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->c:Lcom/google/vr/sdk/widgets/video/deps/cu;

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->d:Lcom/google/vr/sdk/widgets/video/deps/oi;

    .line 6
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->e:Ljava/lang/String;

    .line 7
    iput p6, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->f:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->h:J

    .line 9
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->g:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr$a;Lcom/google/vr/sdk/widgets/video/deps/cu;Lcom/google/vr/sdk/widgets/video/deps/oi;Ljava/lang/String;ILjava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/id$1;)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p7}, Lcom/google/vr/sdk/widgets/video/deps/id;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr$a;Lcom/google/vr/sdk/widgets/video/deps/cu;Lcom/google/vr/sdk/widgets/video/deps/oi;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private b(JZ)V
    .locals 6

    .line 30
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->h:J

    .line 31
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->i:Z

    .line 32
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/iu;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->h:J

    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->i:Z

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->g:Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/iu;-><init>(JZZLjava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/id;->a(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/if$a;Lcom/google/vr/sdk/widgets/video/deps/nl;)Lcom/google/vr/sdk/widgets/video/deps/ie;
    .locals 11

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->b:Lcom/google/vr/sdk/widgets/video/deps/nr$a;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nr$a;->a()Lcom/google/vr/sdk/widgets/video/deps/nr;

    move-result-object v3

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->j:Lcom/google/vr/sdk/widgets/video/deps/oo;

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a(Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    .line 18
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ia;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->c:Lcom/google/vr/sdk/widgets/video/deps/cu;

    .line 19
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/cu;->a()[Lcom/google/vr/sdk/widgets/video/deps/cr;

    move-result-object v4

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->d:Lcom/google/vr/sdk/widgets/video/deps/oi;

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/id;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    move-result-object v6

    iget-object v9, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->e:Ljava/lang/String;

    iget v10, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->f:I

    move-object v1, v0

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v1 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/ia;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr;[Lcom/google/vr/sdk/widgets/video/deps/cr;Lcom/google/vr/sdk/widgets/video/deps/oi;Lcom/google/vr/sdk/widgets/video/deps/ig$a;Lcom/google/vr/sdk/widgets/video/deps/ia$c;Lcom/google/vr/sdk/widgets/video/deps/nl;Ljava/lang/String;I)V

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(JZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 25
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->h:J

    .line 26
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->h:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->i:Z

    if-ne v0, p3, :cond_1

    return-void

    .line 28
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/id;->b(JZ)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/g;ZLcom/google/vr/sdk/widgets/video/deps/oo;)V
    .locals 0

    .line 11
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->j:Lcom/google/vr/sdk/widgets/video/deps/oo;

    .line 12
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/id;->h:J

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/id;->b(JZ)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ie;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ia;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ia;->f()V

    return-void
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
