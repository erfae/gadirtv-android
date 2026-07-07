.class final Lcom/google/android/gms/internal/cast/zzcj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# instance fields
.field private final synthetic zzaal:Lcom/google/android/gms/internal/cast/zzcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzcg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzcj;->zzaal:Lcom/google/android/gms/internal/cast/zzcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzcj;->zzaal:Lcom/google/android/gms/internal/cast/zzcg;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzcg;->zzzt:Lcom/google/android/gms/internal/cast/zzch;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/cast/internal/zzk;->zzz(Ljava/lang/String;)V

    return-void
.end method
