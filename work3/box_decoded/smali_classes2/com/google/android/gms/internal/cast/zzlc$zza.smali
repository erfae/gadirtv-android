.class public Lcom/google/android/gms/internal/cast/zzlc$zza;
.super Lcom/google/android/gms/internal/cast/zzjs;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cast/zzlc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/cast/zzlc<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/cast/zzlc$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/cast/zzjs<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final zzbmv:Lcom/google/android/gms/internal/cast/zzlc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzbmw:Lcom/google/android/gms/internal/cast/zzlc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzbmx:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/cast/zzlc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzjs;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmv:Lcom/google/android/gms/internal/cast/zzlc;

    .line 3
    sget v0, Lcom/google/android/gms/internal/cast/zzlc$zzd;->zzbnf:I

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/cast/zzlc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/cast/zzlc;

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmw:Lcom/google/android/gms/internal/cast/zzlc;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmx:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/cast/zzlc;Lcom/google/android/gms/internal/cast/zzlc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzmx;->zzki()Lcom/google/android/gms/internal/cast/zzmx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/cast/zzmx;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zznc;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zznc;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmv:Lcom/google/android/gms/internal/cast/zzlc;

    .line 49
    check-cast v0, Lcom/google/android/gms/internal/cast/zzlc;

    .line 50
    sget v1, Lcom/google/android/gms/internal/cast/zzlc$zzd;->zzbng:I

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/cast/zzlc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    check-cast v0, Lcom/google/android/gms/internal/cast/zzlc$zza;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzjc()Lcom/google/android/gms/internal/cast/zzml;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zzlc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zza(Lcom/google/android/gms/internal/cast/zzlc;)Lcom/google/android/gms/internal/cast/zzlc$zza;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmw:Lcom/google/android/gms/internal/cast/zzlc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzlc;->zza(Lcom/google/android/gms/internal/cast/zzlc;Z)Z

    move-result v0

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/cast/zzjt;)Lcom/google/android/gms/internal/cast/zzjs;
    .locals 0

    .line 37
    check-cast p1, Lcom/google/android/gms/internal/cast/zzlc;

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zza(Lcom/google/android/gms/internal/cast/zzlc;)Lcom/google/android/gms/internal/cast/zzlc$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzlc;)Lcom/google/android/gms/internal/cast/zzlc$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmx:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zziz()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmx:Z

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmw:Lcom/google/android/gms/internal/cast/zzlc;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zza(Lcom/google/android/gms/internal/cast/zzlc;Lcom/google/android/gms/internal/cast/zzlc;)V

    return-object p0
.end method

.method public final synthetic zzhu()Lcom/google/android/gms/internal/cast/zzjs;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzjs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzlc$zza;

    return-object v0
.end method

.method protected zziz()V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmw:Lcom/google/android/gms/internal/cast/zzlc;

    sget v1, Lcom/google/android/gms/internal/cast/zzlc$zzd;->zzbnf:I

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/cast/zzlc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/cast/zzlc;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmw:Lcom/google/android/gms/internal/cast/zzlc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zza(Lcom/google/android/gms/internal/cast/zzlc;Lcom/google/android/gms/internal/cast/zzlc;)V

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmw:Lcom/google/android/gms/internal/cast/zzlc;

    return-void
.end method

.method public zzja()Lcom/google/android/gms/internal/cast/zzlc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmx:Z

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmw:Lcom/google/android/gms/internal/cast/zzlc;

    return-object v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmw:Lcom/google/android/gms/internal/cast/zzlc;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzmx;->zzki()Lcom/google/android/gms/internal/cast/zzmx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/cast/zzmx;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zznc;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/cast/zznc;->zze(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmx:Z

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmw:Lcom/google/android/gms/internal/cast/zzlc;

    return-object v0
.end method

.method public final zzjb()Lcom/google/android/gms/internal/cast/zzlc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzjc()Lcom/google/android/gms/internal/cast/zzml;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzlc;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzlc;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 26
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/cast/zznr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/cast/zznr;-><init>(Lcom/google/android/gms/internal/cast/zzml;)V

    .line 27
    throw v1
.end method

.method public synthetic zzjc()Lcom/google/android/gms/internal/cast/zzml;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzja()Lcom/google/android/gms/internal/cast/zzlc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzjd()Lcom/google/android/gms/internal/cast/zzml;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzjb()Lcom/google/android/gms/internal/cast/zzlc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzje()Lcom/google/android/gms/internal/cast/zzml;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmv:Lcom/google/android/gms/internal/cast/zzlc;

    return-object v0
.end method
