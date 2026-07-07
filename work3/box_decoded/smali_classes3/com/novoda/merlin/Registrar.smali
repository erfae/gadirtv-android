.class Lcom/novoda/merlin/Registrar;
.super Ljava/lang/Object;
.source "Registrar.java"


# instance fields
.field private final bindables:Lcom/novoda/merlin/Register;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/novoda/merlin/Register<",
            "Lcom/novoda/merlin/Bindable;",
            ">;"
        }
    .end annotation
.end field

.field private final connectables:Lcom/novoda/merlin/Register;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/novoda/merlin/Register<",
            "Lcom/novoda/merlin/Connectable;",
            ">;"
        }
    .end annotation
.end field

.field private final disconnectables:Lcom/novoda/merlin/Register;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/novoda/merlin/Register<",
            "Lcom/novoda/merlin/Disconnectable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/novoda/merlin/Register;Lcom/novoda/merlin/Register;Lcom/novoda/merlin/Register;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/novoda/merlin/Register<",
            "Lcom/novoda/merlin/Connectable;",
            ">;",
            "Lcom/novoda/merlin/Register<",
            "Lcom/novoda/merlin/Disconnectable;",
            ">;",
            "Lcom/novoda/merlin/Register<",
            "Lcom/novoda/merlin/Bindable;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/novoda/merlin/Registrar;->connectables:Lcom/novoda/merlin/Register;

    .line 16
    iput-object p2, p0, Lcom/novoda/merlin/Registrar;->disconnectables:Lcom/novoda/merlin/Register;

    .line 17
    iput-object p3, p0, Lcom/novoda/merlin/Registrar;->bindables:Lcom/novoda/merlin/Register;

    return-void
.end method

.method private bindables()Lcom/novoda/merlin/Register;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/novoda/merlin/Register<",
            "Lcom/novoda/merlin/Bindable;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/novoda/merlin/Registrar;->bindables:Lcom/novoda/merlin/Register;

    if-eqz v0, :cond_0

    return-object v0

    .line 48
    :cond_0
    const-class v0, Lcom/novoda/merlin/Bindable;

    invoke-static {v0}, Lcom/novoda/merlin/MerlinMissingRegisterablesException;->missing(Ljava/lang/Class;)Lcom/novoda/merlin/MerlinMissingRegisterablesException;

    move-result-object v0

    throw v0
.end method

.method private connectables()Lcom/novoda/merlin/Register;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/novoda/merlin/Register<",
            "Lcom/novoda/merlin/Connectable;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/novoda/merlin/Registrar;->connectables:Lcom/novoda/merlin/Register;

    if-eqz v0, :cond_0

    return-object v0

    .line 26
    :cond_0
    const-class v0, Lcom/novoda/merlin/Connectable;

    invoke-static {v0}, Lcom/novoda/merlin/MerlinMissingRegisterablesException;->missing(Ljava/lang/Class;)Lcom/novoda/merlin/MerlinMissingRegisterablesException;

    move-result-object v0

    throw v0
.end method

.method private disconnectables()Lcom/novoda/merlin/Register;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/novoda/merlin/Register<",
            "Lcom/novoda/merlin/Disconnectable;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/novoda/merlin/Registrar;->disconnectables:Lcom/novoda/merlin/Register;

    if-eqz v0, :cond_0

    return-object v0

    .line 37
    :cond_0
    const-class v0, Lcom/novoda/merlin/Disconnectable;

    invoke-static {v0}, Lcom/novoda/merlin/MerlinMissingRegisterablesException;->missing(Ljava/lang/Class;)Lcom/novoda/merlin/MerlinMissingRegisterablesException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method clearRegistrations()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/novoda/merlin/Registrar;->connectables:Lcom/novoda/merlin/Register;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/novoda/merlin/Register;->clear()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/novoda/merlin/Registrar;->disconnectables:Lcom/novoda/merlin/Register;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Lcom/novoda/merlin/Register;->clear()V

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/novoda/merlin/Registrar;->bindables:Lcom/novoda/merlin/Register;

    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v0}, Lcom/novoda/merlin/Register;->clear()V

    :cond_2
    return-void
.end method

.method registerBindable(Lcom/novoda/merlin/Bindable;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/novoda/merlin/Registrar;->bindables()Lcom/novoda/merlin/Register;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/novoda/merlin/Register;->register(Lcom/novoda/merlin/Registerable;)V

    return-void
.end method

.method registerConnectable(Lcom/novoda/merlin/Connectable;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/novoda/merlin/Registrar;->connectables()Lcom/novoda/merlin/Register;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/novoda/merlin/Register;->register(Lcom/novoda/merlin/Registerable;)V

    return-void
.end method

.method registerDisconnectable(Lcom/novoda/merlin/Disconnectable;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/novoda/merlin/Registrar;->disconnectables()Lcom/novoda/merlin/Register;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/novoda/merlin/Register;->register(Lcom/novoda/merlin/Registerable;)V

    return-void
.end method
