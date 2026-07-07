.class final Lcom/google/vr/sdk/widgets/video/deps/ia$b;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:[Lcom/google/vr/sdk/widgets/video/deps/cr;

.field private b:Lcom/google/vr/sdk/widgets/video/deps/cr;


# direct methods
.method public constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/cr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$b;->a:[Lcom/google/vr/sdk/widgets/video/deps/cr;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/ct;Landroid/net/Uri;)Lcom/google/vr/sdk/widgets/video/deps/cr;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$b;->b:Lcom/google/vr/sdk/widgets/video/deps/cr;

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$b;->a:[Lcom/google/vr/sdk/widgets/video/deps/cr;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 7
    :try_start_0
    invoke-interface {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/cr;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$b;->b:Lcom/google/vr/sdk/widgets/video/deps/cr;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 14
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    throw p2

    .line 12
    :catch_0
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$b;->b:Lcom/google/vr/sdk/widgets/video/deps/cr;

    if-eqz p1, :cond_3

    .line 19
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cr;->a(Lcom/google/vr/sdk/widgets/video/deps/ct;)V

    .line 20
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$b;->b:Lcom/google/vr/sdk/widgets/video/deps/cr;

    return-object p1

    .line 17
    :cond_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ix;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$b;->a:[Lcom/google/vr/sdk/widgets/video/deps/cr;

    .line 18
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "None of the available extractors ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") could read the stream."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ix;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p1
.end method

.method public a()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$b;->b:Lcom/google/vr/sdk/widgets/video/deps/cr;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cr;->c()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$b;->b:Lcom/google/vr/sdk/widgets/video/deps/cr;

    :cond_0
    return-void
.end method
