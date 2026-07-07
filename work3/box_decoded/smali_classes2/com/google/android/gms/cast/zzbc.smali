.class final synthetic Lcom/google/android/gms/cast/zzbc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzet:Lcom/google/android/gms/cast/zzay;

.field private final zzeu:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/zzay;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbc;->zzet:Lcom/google/android/gms/cast/zzay;

    iput p2, p0, Lcom/google/android/gms/cast/zzbc;->zzeu:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbc;->zzet:Lcom/google/android/gms/cast/zzay;

    iget v1, p0, Lcom/google/android/gms/cast/zzbc;->zzeu:I

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    invoke-static {v0}, Lcom/google/android/gms/cast/zzak;->zzb(Lcom/google/android/gms/cast/zzak;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationDisconnected(I)V

    return-void
.end method
