.class public Lcom/novoda/merlin/Merlin;
.super Ljava/lang/Object;
.source "Merlin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novoda/merlin/Merlin$Builder;
    }
.end annotation


# instance fields
.field private final merlinServiceBinder:Lcom/novoda/merlin/MerlinServiceBinder;

.field private final registrar:Lcom/novoda/merlin/Registrar;


# direct methods
.method constructor <init>(Lcom/novoda/merlin/MerlinServiceBinder;Lcom/novoda/merlin/Registrar;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/novoda/merlin/Merlin;->merlinServiceBinder:Lcom/novoda/merlin/MerlinServiceBinder;

    .line 10
    iput-object p2, p0, Lcom/novoda/merlin/Merlin;->registrar:Lcom/novoda/merlin/Registrar;

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/novoda/merlin/Merlin;->merlinServiceBinder:Lcom/novoda/merlin/MerlinServiceBinder;

    invoke-virtual {v0}, Lcom/novoda/merlin/MerlinServiceBinder;->bindService()V

    return-void
.end method

.method public registerBindable(Lcom/novoda/merlin/Bindable;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/novoda/merlin/Merlin;->registrar:Lcom/novoda/merlin/Registrar;

    invoke-virtual {v0, p1}, Lcom/novoda/merlin/Registrar;->registerBindable(Lcom/novoda/merlin/Bindable;)V

    return-void
.end method

.method public registerConnectable(Lcom/novoda/merlin/Connectable;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/novoda/merlin/Merlin;->registrar:Lcom/novoda/merlin/Registrar;

    invoke-virtual {v0, p1}, Lcom/novoda/merlin/Registrar;->registerConnectable(Lcom/novoda/merlin/Connectable;)V

    return-void
.end method

.method public registerDisconnectable(Lcom/novoda/merlin/Disconnectable;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/novoda/merlin/Merlin;->registrar:Lcom/novoda/merlin/Registrar;

    invoke-virtual {v0, p1}, Lcom/novoda/merlin/Registrar;->registerDisconnectable(Lcom/novoda/merlin/Disconnectable;)V

    return-void
.end method

.method public setEndpoint(Lcom/novoda/merlin/Endpoint;Lcom/novoda/merlin/ResponseCodeValidator;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/novoda/merlin/Merlin;->merlinServiceBinder:Lcom/novoda/merlin/MerlinServiceBinder;

    invoke-virtual {v0, p1, p2}, Lcom/novoda/merlin/MerlinServiceBinder;->setEndpoint(Lcom/novoda/merlin/Endpoint;Lcom/novoda/merlin/ResponseCodeValidator;)V

    return-void
.end method

.method public unbind()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/novoda/merlin/Merlin;->merlinServiceBinder:Lcom/novoda/merlin/MerlinServiceBinder;

    invoke-virtual {v0}, Lcom/novoda/merlin/MerlinServiceBinder;->unbind()V

    .line 23
    iget-object v0, p0, Lcom/novoda/merlin/Merlin;->registrar:Lcom/novoda/merlin/Registrar;

    invoke-virtual {v0}, Lcom/novoda/merlin/Registrar;->clearRegistrations()V

    return-void
.end method
