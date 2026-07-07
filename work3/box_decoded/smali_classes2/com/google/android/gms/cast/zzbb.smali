.class final synthetic Lcom/google/android/gms/cast/zzbb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzet:Lcom/google/android/gms/cast/zzay;

.field private final zzew:Lcom/google/android/gms/cast/internal/zzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/zzay;Lcom/google/android/gms/cast/internal/zzu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbb;->zzet:Lcom/google/android/gms/cast/zzay;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzbb;->zzew:Lcom/google/android/gms/cast/internal/zzu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbb;->zzet:Lcom/google/android/gms/cast/zzay;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzbb;->zzew:Lcom/google/android/gms/cast/internal/zzu;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/zzak;->zza(Lcom/google/android/gms/cast/zzak;Lcom/google/android/gms/cast/internal/zzu;)V

    return-void
.end method
