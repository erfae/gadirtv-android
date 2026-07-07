.class final Lcom/google/android/gms/internal/cast/zzbn;
.super Lcom/google/android/gms/cast/Cast$Listener;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# instance fields
.field private final synthetic zzvu:Lcom/google/android/gms/internal/cast/zzbo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzbo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzvu:Lcom/google/android/gms/internal/cast/zzbo;

    invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVolumeChanged()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzvu:Lcom/google/android/gms/internal/cast/zzbo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzbo;->zzed()V

    return-void
.end method
