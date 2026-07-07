.class public abstract Lcom/google/vr/sdk/widgets/video/deps/hs;
.super Ljava/lang/Object;
.source "BaseMediaSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/if;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/if$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

.field private c:Lcom/google/vr/sdk/widgets/video/deps/g;

.field private d:Lcom/google/vr/sdk/widgets/video/deps/af;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->b:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ig$a;
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->b:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(ILcom/google/vr/sdk/widgets/video/deps/if$a;J)Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/google/vr/sdk/widgets/video/deps/if$a;J)Lcom/google/vr/sdk/widgets/video/deps/ig$a;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 13
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->b:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(ILcom/google/vr/sdk/widgets/video/deps/if$a;J)Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a()V
.end method

.method public final a(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ig;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->b:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ig;)V

    return-void
.end method

.method protected final a(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;)V
    .locals 2

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    .line 6
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->e:Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/if$b;

    .line 8
    invoke-interface {v1, p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/if$b;->a(Lcom/google/vr/sdk/widgets/video/deps/if;Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/vr/sdk/widgets/video/deps/g;ZLcom/google/vr/sdk/widgets/video/deps/if$b;Lcom/google/vr/sdk/widgets/video/deps/oo;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->c:Lcom/google/vr/sdk/widgets/video/deps/g;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->c:Lcom/google/vr/sdk/widgets/video/deps/g;

    if-nez v0, :cond_2

    .line 21
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->c:Lcom/google/vr/sdk/widgets/video/deps/g;

    .line 22
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/vr/sdk/widgets/video/deps/hs;->a(Lcom/google/vr/sdk/widgets/video/deps/g;ZLcom/google/vr/sdk/widgets/video/deps/oo;)V

    goto :goto_2

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    if-eqz p1, :cond_3

    .line 24
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->e:Ljava/lang/Object;

    invoke-interface {p3, p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/if$b;->a(Lcom/google/vr/sdk/widgets/video/deps/if;Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected abstract a(Lcom/google/vr/sdk/widgets/video/deps/g;ZLcom/google/vr/sdk/widgets/video/deps/oo;)V
.end method

.method public final a(Lcom/google/vr/sdk/widgets/video/deps/if$b;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->c:Lcom/google/vr/sdk/widgets/video/deps/g;

    .line 29
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    .line 30
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->e:Ljava/lang/Object;

    .line 31
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/hs;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/vr/sdk/widgets/video/deps/ig;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hs;->b:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ig;)V

    return-void
.end method
