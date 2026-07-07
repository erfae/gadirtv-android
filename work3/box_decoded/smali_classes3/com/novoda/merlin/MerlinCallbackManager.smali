.class Lcom/novoda/merlin/MerlinCallbackManager;
.super Ljava/lang/Object;
.source "MerlinCallbackManager.java"


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
.field private final register:Lcom/novoda/merlin/Register;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/novoda/merlin/Register<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/novoda/merlin/Register;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/novoda/merlin/Register<",
            "TT;>;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/novoda/merlin/MerlinCallbackManager;->register:Lcom/novoda/merlin/Register;

    return-void
.end method


# virtual methods
.method registerables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/novoda/merlin/MerlinCallbackManager;->register:Lcom/novoda/merlin/Register;

    invoke-virtual {v0}, Lcom/novoda/merlin/Register;->registerables()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
