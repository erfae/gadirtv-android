.class public final Lcom/google/android/gms/internal/cast/zzjm$zzm$zza;
.super Lcom/google/android/gms/internal/cast/zzlc$zza;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzmn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cast/zzjm$zzm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzlc$zza<",
        "Lcom/google/android/gms/internal/cast/zzjm$zzm;",
        "Lcom/google/android/gms/internal/cast/zzjm$zzm$zza;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzmn;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjm$zzm;->zzgs()Lcom/google/android/gms/internal/cast/zzjm$zzm;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzlc$zza;-><init>(Lcom/google/android/gms/internal/cast/zzlc;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzjo;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzjm$zzm$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzar(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzjm$zzm$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzjm$zzm$zza;->zzbmw:Lcom/google/android/gms/internal/cast/zzlc;

    check-cast v0, Lcom/google/android/gms/internal/cast/zzjm$zzm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzjm$zzm;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzm;Ljava/lang/String;)V

    return-object p0
.end method
