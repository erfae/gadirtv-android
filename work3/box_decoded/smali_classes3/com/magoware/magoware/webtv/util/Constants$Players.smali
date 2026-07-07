.class public Lcom/magoware/magoware/webtv/util/Constants$Players;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Players"
.end annotation


# static fields
.field public static final EXO_PLAYER:Ljava/lang/String; = "exoplayer"

.field public static final NATIVE_PLAYER:Ljava/lang/String; = "nativeplayer"

.field public static final VISUAL_ON:Ljava/lang/String; = "visualon"


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/util/Constants;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/util/Constants;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/magoware/magoware/webtv/util/Constants$Players;->this$0:Lcom/magoware/magoware/webtv/util/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
