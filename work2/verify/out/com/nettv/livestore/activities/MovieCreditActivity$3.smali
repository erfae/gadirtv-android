.class Lcom/nettv/livestore/activities/MovieCreditActivity$3;
.super Ljava/lang/Object;
.source "MovieCreditActivity.java"

# interfaces
.implements Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/MovieCreditActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/MovieCreditActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/MovieCreditActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity$3;->this$0:Lcom/nettv/livestore/activities/MovieCreditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusPosition(Lcom/nettv/livestore/models/MovieCreditModel;I)V
    .registers 3

    iget-object p2, p0, Lcom/nettv/livestore/activities/MovieCreditActivity$3;->this$0:Lcom/nettv/livestore/activities/MovieCreditActivity;

    # invokes: Lcom/nettv/livestore/activities/MovieCreditActivity;->setMovieInfo(Lcom/nettv/livestore/models/MovieCreditModel;)V
    invoke-static {p2, p1}, Lcom/nettv/livestore/activities/MovieCreditActivity;->access$100(Lcom/nettv/livestore/activities/MovieCreditActivity;Lcom/nettv/livestore/models/MovieCreditModel;)V

    return-void
.end method

.method public onItemClick(Lcom/nettv/livestore/models/MovieCreditModel;I)V
    .registers 3

    iget-object p2, p0, Lcom/nettv/livestore/activities/MovieCreditActivity$3;->this$0:Lcom/nettv/livestore/activities/MovieCreditActivity;

    # invokes: Lcom/nettv/livestore/activities/MovieCreditActivity;->setMovieInfo(Lcom/nettv/livestore/models/MovieCreditModel;)V
    invoke-static {p2, p1}, Lcom/nettv/livestore/activities/MovieCreditActivity;->access$100(Lcom/nettv/livestore/activities/MovieCreditActivity;Lcom/nettv/livestore/models/MovieCreditModel;)V

    return-void
.end method
