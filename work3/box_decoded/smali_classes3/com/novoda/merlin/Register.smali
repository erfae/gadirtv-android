.class Lcom/novoda/merlin/Register;
.super Ljava/lang/Object;
.source "Register.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/novoda/merlin/Registerable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final registerables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novoda/merlin/Register;->registerables:Ljava/util/List;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/novoda/merlin/Register;->registerables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method register(Lcom/novoda/merlin/Registerable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/novoda/merlin/Register;->registerables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/novoda/merlin/Register;->registerables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method registerables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/novoda/merlin/Register;->registerables:Ljava/util/List;

    return-object v0
.end method
