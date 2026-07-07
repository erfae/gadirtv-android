.class final Lcom/google/android/gms/internal/cast/zzcl;
.super Lcom/google/android/gms/internal/cast/zzcn;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# instance fields
.field private final synthetic zzaaj:Ljava/lang/String;

.field private final synthetic zzaak:Lorg/json/JSONObject;

.field private final synthetic zzzt:Lcom/google/android/gms/internal/cast/zzch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzch;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzcl;->zzzt:Lcom/google/android/gms/internal/cast/zzch;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzcl;->zzaaj:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzcl;->zzaak:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzcn;-><init>(Lcom/google/android/gms/internal/cast/zzch;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcl;->zzzt:Lcom/google/android/gms/internal/cast/zzch;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcl;->zzaaj:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzcl;->zzaak:Lorg/json/JSONObject;

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzcp;->zzaaq:Lcom/google/android/gms/cast/internal/zzam;

    const/4 v4, 0x6

    .line 4
    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzch;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/cast/internal/zzam;)V

    return-void
.end method
