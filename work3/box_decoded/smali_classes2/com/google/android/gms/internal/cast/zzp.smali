.class final synthetic Lcom/google/android/gms/internal/cast/zzp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzmt:Lcom/google/android/gms/internal/cast/zzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzp;->zzmt:Lcom/google/android/gms/internal/cast/zzm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzp;->zzmt:Lcom/google/android/gms/internal/cast/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzm;->zzbd()V

    return-void
.end method
