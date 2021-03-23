.class Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;
.super Ljava/lang/Object;
.source "CategoryExplorerModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

.field private final synthetic val$node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;->this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;->val$node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 328
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;->this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;->val$node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    return-void
.end method
