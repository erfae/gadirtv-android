.class public final Lcom/google/vr/sdk/widgets/video/deps/ol;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/oj$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ol$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/oj$d;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/nv;

.field public final b:I

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/on;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/ol$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/ol$a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Landroid/net/Uri;ILcom/google/vr/sdk/widgets/video/deps/ol$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/nr;",
            "Landroid/net/Uri;",
            "I",
            "Lcom/google/vr/sdk/widgets/video/deps/ol$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/nv;

    const/4 v1, 0x3

    invoke-direct {v0, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/nv;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/ol;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;ILcom/google/vr/sdk/widgets/video/deps/ol$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;ILcom/google/vr/sdk/widgets/video/deps/ol$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/nr;",
            "Lcom/google/vr/sdk/widgets/video/deps/nv;",
            "I",
            "Lcom/google/vr/sdk/widgets/video/deps/ol$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/on;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ol;->c:Lcom/google/vr/sdk/widgets/video/deps/on;

    .line 5
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ol;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 6
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ol;->b:I

    .line 7
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ol;->d:Lcom/google/vr/sdk/widgets/video/deps/ol$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ol;->c:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/on;->d()V

    .line 15
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/nu;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ol;->c:Lcom/google/vr/sdk/widgets/video/deps/on;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ol;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/nu;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;)V

    .line 16
    :try_start_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/nu;->a()V

    .line 17
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ol;->c:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/on;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 18
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ol;->d:Lcom/google/vr/sdk/widgets/video/deps/ol$a;

    invoke-interface {v2, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ol$a;->b(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ol;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 21
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ol;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ol;->c:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/on;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ol;->c:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/on;->f()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ol;->c:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/on;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
