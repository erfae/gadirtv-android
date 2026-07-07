.class public final Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;
.super Lcom/google/android/gms/internal/cast/zzlc$zza;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzmn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cast/zzjm$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzlc$zza<",
        "Lcom/google/android/gms/internal/cast/zzjm$zzb;",
        "Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzmn;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzgb()Lcom/google/android/gms/internal/cast/zzjm$zzb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzlc$zza;-><init>(Lcom/google/android/gms/internal/cast/zzlc;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzjo;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/cast/zzjm$zze;)Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmx:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zziz()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmx:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;->zzbmw:Lcom/google/android/gms/internal/cast/zzlc;

    check-cast v0, Lcom/google/android/gms/internal/cast/zzjm$zzb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzb;Lcom/google/android/gms/internal/cast/zzjm$zze;)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/cast/zzjg;",
            ">;)",
            "Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;"
        }
    .end annotation

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmx:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zziz()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzbmx:Z

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;->zzbmw:Lcom/google/android/gms/internal/cast/zzlc;

    check-cast v0, Lcom/google/android/gms/internal/cast/zzjm$zzb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzb;Ljava/lang/Iterable;)V

    return-object p0
.end method
