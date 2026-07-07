.class Lcom/google/vr/sdk/widgets/video/deps/em$a;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/da;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/em;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/em;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/em$a;->a:Lcom/google/vr/sdk/widgets/video/deps/em;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/em;Lcom/google/vr/sdk/widgets/video/deps/em$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/em$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/em;)V

    return-void
.end method


# virtual methods
.method public a(J)Lcom/google/vr/sdk/widgets/video/deps/da$a;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/db;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/em$a;->a:Lcom/google/vr/sdk/widgets/video/deps/em;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/em;->a(Lcom/google/vr/sdk/widgets/video/deps/em;)J

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/db;-><init>(JJ)V

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/db;)V

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em$a;->a:Lcom/google/vr/sdk/widgets/video/deps/em;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/em;->b(Lcom/google/vr/sdk/widgets/video/deps/em;)Lcom/google/vr/sdk/widgets/video/deps/eu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eu;->b(J)J

    move-result-wide v4

    .line 6
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/em$a;->a:Lcom/google/vr/sdk/widgets/video/deps/em;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/em;->a(Lcom/google/vr/sdk/widgets/video/deps/em;)J

    move-result-wide v2

    const-wide/16 v6, 0x7530

    invoke-static/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/em;->a(Lcom/google/vr/sdk/widgets/video/deps/em;JJJ)J

    move-result-wide v0

    .line 7
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/db;

    invoke-direct {v3, p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/db;-><init>(JJ)V

    invoke-direct {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/db;)V

    return-object v2
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em$a;->a:Lcom/google/vr/sdk/widgets/video/deps/em;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/em;->b(Lcom/google/vr/sdk/widgets/video/deps/em;)Lcom/google/vr/sdk/widgets/video/deps/eu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/em$a;->a:Lcom/google/vr/sdk/widgets/video/deps/em;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/em;->c(Lcom/google/vr/sdk/widgets/video/deps/em;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/eu;->a(J)J

    move-result-wide v0

    return-wide v0
.end method
