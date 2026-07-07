.class final Lcom/google/android/gms/cast/framework/media/widget/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzzb:Lcom/google/android/gms/cast/framework/media/widget/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/widget/zzf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzzb:Lcom/google/android/gms/cast/framework/media/widget/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzzb:Lcom/google/android/gms/cast/framework/media/widget/zzf;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/widget/zzf;->zzza:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzzb:Lcom/google/android/gms/cast/framework/media/widget/zzf;

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/widget/zzf;->zzzc:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    return-void
.end method
