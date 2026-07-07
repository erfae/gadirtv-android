.class public final synthetic Lcom/magoware/magoware/webtv/-$$Lambda$MainActivity$QHPTKwaGMl93qQ2EQOLmUOW-feM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/MainActivity;

.field public final synthetic f$1:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/MainActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/-$$Lambda$MainActivity$QHPTKwaGMl93qQ2EQOLmUOW-feM;->f$0:Lcom/magoware/magoware/webtv/MainActivity;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/-$$Lambda$MainActivity$QHPTKwaGMl93qQ2EQOLmUOW-feM;->f$1:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/-$$Lambda$MainActivity$QHPTKwaGMl93qQ2EQOLmUOW-feM;->f$0:Lcom/magoware/magoware/webtv/MainActivity;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/-$$Lambda$MainActivity$QHPTKwaGMl93qQ2EQOLmUOW-feM;->f$1:Ljava/util/HashMap;

    check-cast p1, Lcom/google/firebase/iid/InstanceIdResult;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/MainActivity;->lambda$sendFirebaseToken$1$MainActivity(Ljava/util/HashMap;Lcom/google/firebase/iid/InstanceIdResult;)V

    return-void
.end method
