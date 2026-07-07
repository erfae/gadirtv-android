.class public Lcom/google/android/gms/cast/MediaError$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzfe:Ljava/lang/Integer;

.field private zzff:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaError;
    .locals 5

    .line 6
    new-instance v0, Lcom/google/android/gms/cast/MediaError;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaError$Builder;->zzfe:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaError$Builder;->zzff:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/gms/cast/MediaError;-><init>(JLjava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method public setDetailedErrorCode(Ljava/lang/Integer;)Lcom/google/android/gms/cast/MediaError$Builder;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaError$Builder;->zzfe:Ljava/lang/Integer;

    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaError$Builder;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaError$Builder;->zzff:Ljava/lang/String;

    return-object p0
.end method
